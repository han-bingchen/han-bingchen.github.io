# 个人主页

这是一个基于Hugo和GitHub Pages搭建的个人网站。

## 📋 项目结构

```
/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions自动部署配置
├── archetypes/                 # 文章模板
├── content/                    # 网站内容
│   ├── about/                  # 关于页面
│   └── posts/                  # 博客文章
├── layouts/                    # 自定义布局模板
│   └── _default/
│       ├── baseof.html         # 基础模板
│       ├── home.html           # 首页模板
│       ├── single.html         # 单篇文章模板
│       └── list.html           # 列表页面模板
├── static/                     # 静态文件（图片、CSS等）
├── hugo.toml                   # Hugo配置文件
├── .gitignore                  # Git忽略文件列表
└── README.md                   # 本文件
```

## 🚀 快速开始

### 1. 前置要求

- 安装Hugo（Extended版本）
- 安装Git
- GitHub账号

### 2. 本地开发

```bash
# 启动本地开发服务器
hugo server --buildDrafts

# 访问 http://localhost:1313/
```

### 3. 创建新文章

```bash
# 创建新的博客文章
hugo new content posts/my-article.md

# 编辑文章（在编辑器中打开文件并编写内容）
```

### 4. 生成静态网站

```bash
# 生成public目录下的静态文件
hugo
```

## 📝 配置说明

编辑 `hugo.toml` 文件来自定义你的网站：

```toml
baseURL = 'https://yourusername.github.io/'  # 替换为你的GitHub Pages URL
languageCode = 'zh-cn'                        # 网站语言
title = '我的个人主页'                        # 网站标题
```

### 菜单配置

在 `hugo.toml` 中可以配置导航菜单：

```toml
[[menu.main]]
name = '首页'
url = '/'
weight = 1

[[menu.main]]
name = '关于'
url = '/about/'
weight = 2
```

## 🌐 部署到GitHub Pages

### 方案一：使用GitHub Actions（推荐）

1. **创建GitHub仓库**
   - 仓库名称必须是：`yourusername.github.io`
   - 将本项目代码推送到GitHub

2. **配置GitHub Pages**
   - 进入仓库 Settings → Pages
   - Source选择 "GitHub Actions"
   - 保存设置

3. **自动部署**
   - 每次push到main分支，GitHub Actions会自动构建并部署
   - 访问 `https://yourusername.github.io` 查看你的网站

### 方案二：手动部署

1. **生成静态文件**
   ```bash
   hugo
   ```

2. **部署public目录**
   ```bash
   # 使用Git将public目录推送到gh-pages分支
   # 或将public目录的内容推送到username.github.io仓库
   ```

## 📄 文章编写指南

### Markdown文章示例

```markdown
---
title: "文章标题"
date: 2025-11-15
categories: ["技术分享"]
tags: ["Hugo", "GitHub"]
draft: false
---

## 标题

文章内容...

### 子标题

更多内容...
```

### Front Matter 说明

- `title`: 文章标题（必需）
- `date`: 发布日期
- `categories`: 分类（可选）
- `tags`: 标签（可选）
- `draft`: 是否为草稿（true为草稿，false为已发布）

## 🎨 自定义样式

编辑 `layouts/_default/baseof.html` 中的 `<style>` 标签来自定义CSS样式。

## 📚 常用命令

```bash
# 启动本地服务器（包含草稿）
hugo server --buildDrafts

# 启动本地服务器（不包含草稿）
hugo server

# 生成静态网站
hugo

# 生成网站并清理旧文件
hugo --cleanDestinationDir

# 创建新文章
hugo new content posts/my-article.md

# 查看Hugo版本
hugo version
```

## 🔗 有用的链接

- [Hugo官方文档](https://gohugo.io/documentation/)
- [GitHub Pages文档](https://docs.github.com/en/pages)
- [Markdown语法](https://www.markdownguide.org/)

## 💡 建议

1. **定期更新内容** - 保持网站活跃，经常发布新文章
2. **优化SEO** - 在Front Matter中添加合适的标题和描述
3. **添加静态文件** - 在 `static/` 目录下添加图片、favicon等
4. **自定义样式** - 根据个人喜好修改CSS样式

## 📞 联系方式

- 编辑 `content/about/_index.md` 来添加你的联系信息

## 📄 许可证

MIT License - 详见LICENSE文件

---

祝你的个人主页建设顺利！🎉
