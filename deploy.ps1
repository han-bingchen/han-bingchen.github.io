#!/usr/bin/env powershell
# deploy.ps1
# 非交互式 Hugo 部署脚本 — 构建网站并把 public/ 推送到 gh-pages 分支

Write-Host "🚀 Hugo -> gh-pages 部署脚本" -ForegroundColor Green

# 默认 Hugo 可执行路径（根据项目结构）
$defaultHugo = Join-Path -Path (Split-Path -Parent $PSScriptRoot) -ChildPath "hugo_bin\hugo.exe"
$hugoPath = $defaultHugo

if (-not (Test-Path $hugoPath)) {
    Write-Host "⚠️ 未在预期位置找到 hugo: $hugoPath" -ForegroundColor Yellow
    Write-Host "请把 Hugo 可执行文件放在 hugo_bin\hugo.exe，或修改脚本中的路径。" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ 使用 Hugo: $hugoPath" -ForegroundColor Green

# 构建站点
Write-Host "🔨 正在构建网站 (hugo --cleanDestinationDir --minify) ..." -ForegroundColor Cyan
& $hugoPath --cleanDestinationDir --minify
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Hugo 构建失败 (exit code $LASTEXITCODE)" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Hugo 构建成功，输出目录: public/" -ForegroundColor Green

# 获取仓库远程 URL（尝试从上级目录的 git 配置读取）
$repoRoot = Split-Path -Parent $PSScriptRoot
$originUrl = ""
try {
    $originUrl = (& git -C $repoRoot config --get remote.origin.url) -join ""
} catch {
    $originUrl = ""
}

if ([string]::IsNullOrWhiteSpace($originUrl)) {
    Write-Host "❗ 未在仓库中检测到 remote.origin.url，请在脚本中设置 repoUrl 或先在本地配置远程仓库。" -ForegroundColor Red
    exit 1
}

Write-Host "将使用远程仓库: $originUrl" -ForegroundColor Cyan

# 在 public 中临时 init 并推送到 gh-pages
$publicDir = Join-Path $repoRoot 'public'
if (-not (Test-Path $publicDir)) {
    Write-Host "❌ public 目录不存在：$publicDir" -ForegroundColor Red
    exit 1
}

Push-Location $publicDir
try {
    if (Test-Path .git) { Remove-Item -Recurse -Force .git }
    git init
    git checkout -b gh-pages
    git add -A
    $time = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    git commit -m "Deploy site: publish public/ on $time" || Write-Host "(empty commit or no changes)" -ForegroundColor Yellow
    if (-not (& git remote)) {
        git remote add origin $originUrl
    } else {
        try { git remote remove origin; git remote add origin $originUrl } catch { }
    }
    git push -f origin gh-pages
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ 推送 gh-pages 失败 (exit code $LASTEXITCODE)" -ForegroundColor Red
        exit 1
    }
    Write-Host "✅ 已成功将 public/ 推送到 gh-pages 分支" -ForegroundColor Green
} finally {
    # 清理 .git
    if (Test-Path .git) { Remove-Item -Recurse -Force .git }
    Pop-Location
}

Write-Host "🎉 部署完成：请在 https://<your-username>.github.io/ 或仓库 Pages 设置中验证站点" -ForegroundColor Green
