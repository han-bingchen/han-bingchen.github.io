#!/usr/bin/env powershell
# Hugo to GitHub Pages 部署脚本

Write-Host "🚀 Hugo网站部署工具" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""

# 检查Hugo是否安装
$hugoPath = "E:\智能科学研究实践\Page\hugo_bin\hugo.exe"
if (-not (Test-Path $hugoPath)) {
    Write-Host "❌ Hugo未找到，请确保Hugo已安装" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Hugo已检测到" -ForegroundColor Green

# 获取用户输入
Write-Host ""
Write-Host "📝 请输入以下信息：" -ForegroundColor Yellow
$githubUsername = Read-Host "GitHub用户名 (例如: john)"
$repoUrl = "https://github.com/$githubUsername/$githubUsername.github.io.git"

Write-Host ""
Write-Host "将使用以下配置："
Write-Host "  用户名: $githubUsername"
Write-Host "  仓库URL: $repoUrl"
Write-Host ""

$confirm = Read-Host "确认无误？(y/n)"
if ($confirm -ne "y") {
    Write-Host "取消部署" -ForegroundColor Yellow
    exit 0
}

# 构建网站
Write-Host ""
Write-Host "🔨 正在构建网站..." -ForegroundColor Cyan
& $hugoPath

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ 构建失败" -ForegroundColor Red
    exit 1
}

Write-Host "✅ 网站构建完成" -ForegroundColor Green

# 提交和推送
Write-Host ""
Write-Host "📤 正在提交并推送到GitHub..." -ForegroundColor Cyan

git add .
$message = Read-Host "提交信息 (默认: Update site)"
if ([string]::IsNullOrWhiteSpace($message)) {
    $message = "Update site"
}

git commit -m $message

if (-not (git remote get-url origin)) {
    Write-Host "设置远程仓库..."
    git remote add origin $repoUrl
}

git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ 推送成功！" -ForegroundColor Green
    Write-Host ""
    Write-Host "🎉 你的网站即将在以下地址发布：" -ForegroundColor Green
    Write-Host "   https://$githubUsername.github.io" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "💡 提示：部署可能需要1-2分钟，请稍候" -ForegroundColor Yellow
} else {
    Write-Host "❌ 推送失败，请检查您的Git配置和网络连接" -ForegroundColor Red
    exit 1
}
