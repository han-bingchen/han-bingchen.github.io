# 🚀 快速参考卡片

## 3步快速部署

```powershell
# 第1步：修改配置
# 编辑 hugo.toml，将 yourusername 改成你的GitHub用户名
# baseURL = 'https://yourusername.github.io/'

# 第2步：初始化并推送
cd E:\智能科学研究实践\Page\myblog
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/yourusername/yourusername.github.io.git
git branch -M main
git push -u origin main

# 第3步：配置GitHub Pages
# 进入 GitHub 仓库 → Settings → Pages → 选择 "GitHub Actions"
```

等待1-2分钟后，访问：`https://yourusername.github.io` 🎉

---

## 常用命令速查

| 目的 | 命令 |
|------|------|
| 启动本地服务器 | `E:\智能科学研究实践\Page\hugo_bin\hugo.exe server --buildDrafts` |
| 生成网站 | `E:\智能科学研究实践\Page\hugo_bin\hugo.exe` |
| 查看Hugo版本 | `E:\智能科学研究实践\Page\hugo_bin\hugo.exe version` |
| 创建新文章 | 在 `content/posts/` 新建 `.md` 文件 |
| 提交更新 | `git add . && git commit -m "message" && git push` |

---

## 文件编辑清单

| 文件 | 修改项 | 示例 |
|------|--------|------|
| `hugo.toml` | baseURL | `https://john.github.io/` |
| `hugo.toml` | title | `我的个人主页` |
| `content/about/_index.md` | 个人介绍 | 编辑关于页面内容 |
| `layouts/_default/baseof.html` | CSS样式 | 修改颜色、字体等 |

---

## 访问地址

- **本地预览**: `http://localhost:1313/`
- **线上地址**: `https://yourusername.github.io/`

---

## 故障排查速查

| 问题 | 解决方案 |
|------|---------|
| 网站无法访问 | 检查仓库名是否为 `yourusername.github.io` |
| 样式错乱 | 检查 `hugo.toml` 中 `baseURL` 末尾是否有 `/` |
| 文章不显示 | 确保 `draft: false` 或删除draft行 |
| GitHub Actions失败 | 查看仓库 Actions 标签中的构建日志 |

---

## 目录结构速查

```
myblog/
├── content/              ← 编辑这里添加内容
│   ├── about/
│   └── posts/
├── layouts/              ← 编辑这里改样式
├── hugo.toml            ← ⭐ 必须修改这个
├── public/              ← 自动生成（不用手动修改）
└── .github/workflows/   ← GitHub自动部署配置
```

---

## 🎯 5分钟快速检查清单

- [ ] 已安装Hugo（可运行 `hugo version`）
- [ ] 已修改 `hugo.toml` 中的 `baseURL`
- [ ] 已创建GitHub仓库（`yourusername.github.io`）
- [ ] 已用Git初始化并推送代码
- [ ] 已在GitHub Pages设置中选择 "GitHub Actions"
- [ ] 已在 Actions 标签中看到绿色✓（构建成功）
- [ ] 能访问 `https://yourusername.github.io` ✅

---

## 📱 移动端快速命令

```powershell
# 推荐别名（添加到PowerShell配置）
Set-Alias hugo 'E:\智能科学研究实践\Page\hugo_bin\hugo.exe'

# 然后就可以直接用：
hugo server --buildDrafts
hugo
hugo version
```

---

**保存此文档为收藏，方便随时查阅！** ⭐
