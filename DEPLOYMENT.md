# 🚀 Hugo + GitHub Pages 部署指南

## 第一步：创建GitHub仓库

1. 登录GitHub账号
2. 点击右上角 "+" → "New repository"
3. **重要**：仓库名称必须是 `yourusername.github.io`
   - 例如：如果你的GitHub用户名是 `john`，仓库名就是 `john.github.io`
4. 选择 "Public"（公开）
5. 点击 "Create repository"

## 第二步：初始化本地Git仓库

```powershell
# 进入项目目录
cd E:\智能科学研究实践\Page\myblog

# 初始化Git（如果还没有初始化）
git init

# 添加所有文件
git add .

# 创建第一次提交
git commit -m "Initial commit: Hugo site setup"
```

## 第三步：关联远程仓库

```powershell
# 添加远程仓库地址（将 yourusername 替换为你的GitHub用户名）
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 切换分支名为 main（GitHub默认）
git branch -M main

# 推送到GitHub
git push -u origin main
```

## 第四步：配置GitHub Pages

1. 进入你的GitHub仓库页面
2. 点击 "Settings"（设置）
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 部分选择 "GitHub Actions"
5. 无需配置branch，GitHub Actions会自动处理

## 第五步：自动部署

1. 所有配置已完成！
2. 每当你push代码到main分支时，GitHub Actions会自动：
   - 构建Hugo网站
   - 生成静态文件
   - 部署到GitHub Pages

## 第六步：访问你的网站

等待1-2分钟，然后访问：
```
https://yourusername.github.io
```

## 📝 后续更新步骤

每次更新内容时：

```powershell
# 1. 编辑内容（添加文章或修改配置）
# 2. 测试本地效果
hugo server --buildDrafts

# 3. 确认无误后，提交并推送
git add .
git commit -m "Update: Add new article about xxx"
git push
```

## ⚠️ 常见问题

### 网站不显示
- 检查仓库名是否正确（必须是 `yourusername.github.io`）
- 检查GitHub Actions是否成功运行（Settings → Actions → General）
- 等待5-10分钟，GitHub可能需要时间部署

### 样式没有加载
- 检查 `hugo.toml` 中的 `baseURL` 是否正确
- 例如：`baseURL = 'https://yourusername.github.io/'`
- 注意最后必须有 `/`

### 404错误
- 确保 `content/posts/` 下有`.md`文件
- 检查文件的Front Matter配置

## 🔑 重要配置

在推送前，务必检查这些配置：

### 1. hugo.toml

```toml
# ⚠️ 重要：修改此URL为你的GitHub Pages地址
baseURL = 'https://yourusername.github.io/'
languageCode = 'zh-cn'
title = '我的个人主页'
```

### 2. GitHub仓库名

```
yourusername.github.io
```

## 📊 验证部署

1. 推送代码后，进入仓库
2. 点击 "Actions" 标签
3. 查看最新的工作流运行状态
4. 看到绿色✓表示成功

## 🎉 恭喜

你的个人主页已经上线了！

访问地址：`https://yourusername.github.io`

---

## 💡 下一步建议

1. **美化网站**
   - 添加个人头像到 `static/images/`
   - 修改CSS样式
   - 添加更多内容

2. **丰富内容**
   - 写更多博客文章
   - 添加项目展示
   - 分享技术心得

3. **SEO优化**
   - 添加网站描述
   - 优化文章标题
   - 添加关键词

祝你的博客网站运营顺利！🚀
