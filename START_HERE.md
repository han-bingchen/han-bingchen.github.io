# 🚀 START HERE - 快速启动指南

欢迎使用Hugo个人主页！这个文件将指导你快速启动项目。

## ⏱️ 预计时间：10分钟

---

## 第一步：了解项目 (1分钟)

你现在有一个完整的Hugo个人博客项目，包括：
- ✅ Hugo网站框架
- ✅ 响应式设计主题
- ✅ GitHub Pages自动部署配置
- ✅ 示例文章和页面

---

## 第二步：关键文件 (2分钟)

需要修改的重要文件：

### 1️⃣ `hugo.toml` - **必须修改！**
```toml
baseURL = 'https://yourusername.github.io/'  # 改这里！
title = '我的个人主页'                        # 可选：改网站名称
```

### 2️⃣ `content/about/_index.md` - 可选修改
编辑你的关于页面，添加个人介绍。

### 3️⃣ `layouts/_default/baseof.html` - 可选修改
编辑 `<style>` 标签来自定义颜色和字体。

---

## 第三步：本地测试 (2分钟)

在PowerShell中运行：

```powershell
# 启动本地服务器
cd E:\智能科学研究实践\Page\myblog
E:\智能科学研究实践\Page\hugo_bin\hugo.exe server --buildDrafts

# 然后在浏览器中打开：
# http://localhost:1313/
```

看到网站就表示配置成功！✅

---

## 第四步：创建GitHub仓库 (2分钟)

1. 登录 [github.com](https://github.com)
2. 点击 `+` → `New repository`
3. 仓库名称：**`yourusername.github.io`**
   - 例如：如果你是john，就是 `john.github.io`
4. 选择 `Public`
5. 点击 `Create repository`

⚠️ **仓库名称必须准确！**

---

## 第五步：推送到GitHub (2分钟)

在PowerShell中运行：

```powershell
cd E:\智能科学研究实践\Page\myblog

# 初始化Git
git init
git add .
git commit -m "Initial commit"

# 添加远程仓库（替换yourusername为你的GitHub用户名）
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 推送代码
git branch -M main
git push -u origin main
```

**或者使用快速脚本：**
```powershell
cd E:\智能科学研究实践\Page\myblog
.\deploy.ps1
```

---

## 第六步：配置GitHub Pages (1分钟)

1. 进入你的GitHub仓库页面
2. 点击 **Settings** （设置）
3. 在左侧找到 **Pages**
4. **Source** 选择 **"GitHub Actions"**
5. 保存

---

## 第七步：等待部署 (1-2分钟)

1. 回到你的仓库主页
2. 点击 **Actions** 标签
3. 等待自动部署完成（显示绿色✓）

---

## 🎉 完成！

访问你的网站：
```
https://yourusername.github.io
```

如果看不到，请：
- 等待5分钟（GitHub需要时间）
- 清空浏览器缓存
- 检查仓库名是否正确

---

## 📚 接下来做什么？

### 🎨 自定义外观
- 编辑 `layouts/_default/baseof.html` 修改CSS
- 改变颜色、字体、布局

### ✍️ 添加文章
在 `content/posts/` 下创建新的 `.md` 文件：

```markdown
---
title: "我的第二篇文章"
date: 2025-11-15
categories: ["生活"]
tags: ["日记"]
draft: false
---

## 文章标题

这是文章内容...
```

### 🌐 发布更新
```powershell
git add .
git commit -m "Add new article"
git push
```

GitHub会自动重新部署！

---

## 🆘 遇到问题？

### 网站无法访问
- ❌ 检查：仓库名是否为 `yourusername.github.io`
- ❌ 检查：`hugo.toml` 中 `baseURL` 是否正确
- ❌ 检查：GitHub Actions是否成功（Actions标签中的绿色✓）

### 样式加载不出来
- ❌ 检查：`baseURL` 末尾是否有 `/`
- ❌ 清除：浏览器缓存
- ❌ 等待：5分钟让CDN更新

### 文章不显示
- ❌ 检查：文件是否在 `content/posts/` 目录
- ❌ 检查：是否设置 `draft: false`
- ❌ 检查：文件后缀是否为 `.md`

---

## 📖 详细文档

- **完整部署指南**: 打开 `DEPLOYMENT.md`
- **快速参考卡片**: 打开 `QUICK_REFERENCE.md`
- **项目说明**: 打开 `README.md`
- **配置详情**: 打开 `HOW_TO_DEPLOY.md`

---

## ✨ 项目清单

**本项目已包含：**
- ✅ Hugo框架（已安装）
- ✅ 自定义主题（已配置）
- ✅ GitHub Actions部署（已配置）
- ✅ 示例文章（可删除）
- ✅ 完整文档（已生成）

**你需要做的：**
1. ⬜ 修改 `hugo.toml` 的 `baseURL`
2. ⬜ 在GitHub创建仓库
3. ⬜ 推送代码到GitHub
4. ⬜ 配置GitHub Pages
5. ⬜ 等待部署完成

---

## 🎯 核心三步

```
修改配置 → 推送GitHub → 完成！
```

就这么简单！🎉

---

## 💬 提示

- 如果忘记了命令，查看 `QUICK_REFERENCE.md`
- 如果有问题，查看 `DEPLOYMENT.md` 的故障排查
- 如果想了解更多，查看各个文档文件

---

**准备好了吗？** 

👉 现在就开始吧！修改 `hugo.toml` 中的 `baseURL`，然后按照第五步推送代码！

**Good luck! 祝你的个人主页建设顺利！** 🚀

