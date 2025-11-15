# 📝 如何修改主页内容并本地查看效果

## 🎯 快速指南（3步）

### Step 1：编辑主页模板文件

**文件路径**：`layouts/_default/home.html`

**用编辑器打开此文件**，你会看到：

```html
{{ define "main" }}
<section class="home">
    <h2>Hi, I'm Bingchen Han 👋</h2>
    <p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
        Welcome to my personal website! I'm passionate about software development, cloud technologies, and sharing knowledge.<br>
        Here I document my learning journey, technical insights, and project experiences.
    </p>
    
    <h3 style="margin-top: 40px; color: #2c3e50;">Latest Articles</h3>
    ...
</section>
{{ end }}
```

### Step 2：修改你想要的内容

**可修改的部分**：

#### 修改主标题
```html
<!-- 原来 -->
<h2>Hi, I'm Bingchen Han 👋</h2>

<!-- 改成你的名字 -->
<h2>Hi, I'm Your Name 👋</h2>
```

#### 修改副标题/描述
```html
<!-- 原来 -->
<p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
    Welcome to my personal website! I'm passionate about software development, cloud technologies, and sharing knowledge.<br>
    Here I document my learning journey, technical insights, and project experiences.
</p>

<!-- 改成你的介绍 -->
<p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
    你的自我介绍第一行<br>
    你的自我介绍第二行
</p>
```

#### 修改"最新文章"标题
```html
<!-- 原来 -->
<h3 style="margin-top: 40px; color: #2c3e50;">Latest Articles</h3>

<!-- 改成 -->
<h3 style="margin-top: 40px; color: #2c3e50;">Recent Blog Posts</h3>
```

### Step 3：保存文件并查看效果

1. **保存编辑后的文件**（Ctrl+S）
2. **Hugo 会自动检测变化**（服务器的监听机制）
3. **刷新浏览器**（F5 或 Ctrl+R）
4. **立即看到修改效果**！✅

---

## 📋 详细修改说明

### 文件结构说明

```
myblog/
├── layouts/              ← 模板目录
│   └── _default/
│       ├── home.html     ← 首页模板 ⭐ 这个文件
│       ├── single.html   ← 文章页面模板
│       ├── list.html     ← 列表页面模板
│       └── baseof.html   ← 基础模板（含CSS样式）
```

### 主页模板的主要部分

#### 1. 主标题部分
```html
<h2>Hi, I'm Bingchen Han 👋</h2>
```
- `<h2>` = 二级标题（大字体）
- 包含表情符号（如 👋）

**修改示例**：
```html
<h2>欢迎来到我的博客 🎉</h2>
<h2>Hi, I'm John Doe 💻</h2>
```

#### 2. 介绍段落部分
```html
<p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
    欢迎内容<br>
    更多内容
</p>
```
- `<p>` = 段落标签
- `<br>` = 换行符
- `style="..."` = 内联样式（字体大小、间距等）

**修改示例**：
```html
<p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
    我是一个全栈开发工程师<br>
    热爱分享技术心得和项目经验
</p>
```

#### 3. 最新文章部分
```html
<h3 style="margin-top: 40px; color: #2c3e50;">Latest Articles</h3>
{{ if .Site.RegularPages }}
<ul class="article-list">
    {{ range first 5 .Site.RegularPages }}
    <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .Date.Format "2006-01-02" }}</div>
        <p>{{ .Summary }}</p>
    </li>
    {{ end }}
</ul>
{{ else }}
<p>No articles yet</p>
{{ end }}
```

**说明**：
- 这部分是**动态的**，会自动显示你 `content/posts/` 目录下的最新文章
- 不需要手动修改，但可以修改标题（`Latest Articles`）
- `first 5` 表示只显示最新的5篇文章

---

## 🎨 修改CSS样式

如果你想修改**颜色、字体、间距**等，可以修改文件中的 `style` 属性：

### 常见CSS属性

```html
<!-- 字体大小 -->
style="font-size: 16px;"           <!-- 改成 14px, 18px, 20px 等 -->

<!-- 颜色 -->
style="color: #2c3e50;"            <!-- 改成 #333, #0066cc, rgb(0,0,0) 等 -->

<!-- 间距（外边距） -->
style="margin: 20px 0;"            <!-- 上下20px，左右0 -->

<!-- 间距（内边距） -->
style="padding: 10px;"             <!-- 四周都是10px -->

<!-- 行高 -->
style="line-height: 1.8;"          <!-- 改成 1.5, 2.0 等 -->

<!-- 背景色 -->
style="background-color: #f0f0f0;" <!-- 改成其他颜色 -->
```

### 修改标题颜色示例

```html
<!-- 原来（深蓝灰） -->
<h3 style="margin-top: 40px; color: #2c3e50;">Latest Articles</h3>

<!-- 改成蓝色 -->
<h3 style="margin-top: 40px; color: #0066cc;">Latest Articles</h3>

<!-- 改成绿色 -->
<h3 style="margin-top: 40px; color: #27ae60;">Latest Articles</h3>

<!-- 改成红色 -->
<h3 style="margin-top: 40px; color: #e74c3c;">Latest Articles</h3>
```

---

## 🔄 实时查看效果的步骤

### 前置条件
✅ Hugo 服务器正在运行（`http://localhost:1313/`）

### 修改流程

```
1. 编辑文件（layouts/_default/home.html）
   ↓
2. 保存文件（Ctrl+S）
   ↓
3. Hugo 自动检测变化（<1 秒）
   ↓
4. 刷新浏览器（F5）
   ↓
5. 看到修改效果！ ✅
```

### 验证服务器运行

在浏览器访问：`http://localhost:1313/`

你应该看到一个页面，顶部显示：
- **"Hi, I'm Bingchen Han 👋"**（或你修改后的内容）
- **导航菜单**（Home, About, Articles）
- **最新文章列表**

---

## 📝 完整修改示例

### 示例1：英文版本

```html
{{ define "main" }}
<section class="home">
    <h2>Welcome to My Tech Blog 🚀</h2>
    <p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
        Hi! I'm a full-stack developer passionate about cloud technologies and AI.<br>
        I share my learnings, projects, and thoughts on software engineering.
    </p>
    
    <h3 style="margin-top: 40px; color: #0066cc;">Featured Articles</h3>
    ...
</section>
{{ end }}
```

### 示例2：中文版本

```html
{{ define "main" }}
<section class="home">
    <h2>欢迎来到我的技术博客 🚀</h2>
    <p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
        我是一名全栈开发工程师，专注于云技术和人工智能。<br>
        这里分享我的学习心得、项目经验和技术思考。
    </p>
    
    <h3 style="margin-top: 40px; color: #27ae60;">最新文章</h3>
    ...
</section>
{{ end }}
```

### 示例3：添加更多内容

```html
{{ define "main" }}
<section class="home">
    <h2>Hi, I'm Your Name 👋</h2>
    <p style="font-size: 16px; margin: 20px 0; line-height: 1.8;">
        关于你的介绍第一段<br>
        关于你的介绍第二段
    </p>
    
    <!-- 添加新的部分 -->
    <h3 style="margin-top: 40px; color: #2c3e50;">Skills</h3>
    <p>
        • Web Development<br>
        • Database Design<br>
        • Cloud Architecture
    </p>
    
    <h3 style="margin-top: 40px; color: #2c3e50;">Latest Articles</h3>
    ...
</section>
{{ end }}
```

---

## 🎯 常见问题

### Q1: 修改后没有看到效果？
**A**: 
1. ✅ 确认文件已保存（Ctrl+S）
2. ✅ Hugo 服务器仍在运行（检查 http://localhost:1313/）
3. ✅ 硬刷新浏览器（Ctrl+Shift+R 或 Ctrl+F5）
4. ✅ 检查浏览器控制台是否有错误（F12）

### Q2: 想修改其他页面怎么办？
**A**: 
- **关于页面**：编辑 `content/about/_index.md`（使用 Markdown）
- **文章页面模板**：编辑 `layouts/_default/single.html`
- **全局样式**：编辑 `layouts/_default/baseof.html`（含 CSS）

### Q3: 想添加更多页面？
**A**: 创建新的 Markdown 文件
```
content/
├── about/
│   └── _index.md        （关于页面）
├── posts/
│   ├── post1.md         （文章1）
│   └── post2.md         （文章2）
└── portfolio/           （新建目录）
    └── _index.md        （新页面）
```

然后在 `hugo.toml` 的菜单部分添加：
```toml
[[menu.main]]
name = 'Portfolio'
url = '/portfolio/'
weight = 4
```

### Q4: 如何恢复原始内容？
**A**: 可以通过 Git 恢复
```powershell
git checkout layouts/_default/home.html
```

---

## 📚 所有可编辑的文件

| 文件 | 用途 | 编辑方式 |
|------|------|---------|
| `layouts/_default/home.html` | 首页内容 | 编辑 HTML/文本 |
| `layouts/_default/single.html` | 文章页面模板 | 编辑 HTML/文本 |
| `content/about/_index.md` | 关于页面 | 编辑 Markdown |
| `content/posts/xxx.md` | 博文 | 编辑 Markdown |
| `layouts/_default/baseof.html` | 全局样式和布局 | 编辑 HTML/CSS |
| `hugo.toml` | 网站配置 | 编辑 TOML |

---

## ✅ 修改检查清单

在保存和刷新前，检查：

- [ ] 文件路径正确（`layouts/_default/home.html`）
- [ ] HTML 标签配对正确（`<p>` 和 `</p>`）
- [ ] 中文内容使用 UTF-8 编码
- [ ] 没有删除 `{{ }}` 这样的 Hugo 模板语法
- [ ] 样式中的颜色代码有效（如 `#0066cc`）
- [ ] 文件已保存（Ctrl+S）

---

## 🚀 下一步

修改完主页后，你可以：

1. **添加更多文章**：在 `content/posts/` 创建新 `.md` 文件
2. **修改关于页面**：编辑 `content/about/_index.md`
3. **自定义样式**：编辑 `layouts/_default/baseof.html` 中的 CSS
4. **部署到 GitHub**：运行 `.\deploy.ps1`

---

**祝修改顺利！有任何问题欢迎继续提问。** 😊

