# GitHub Pages 配置指南

## ✅ 已完成的配置

1. ✅ 更新了 `vite.config.js`，设置 base 路径为 `/tripaustrilia/`
2. ✅ 创建了 GitHub Actions 工作流文件 `.github/workflows/deploy.yml`

## 📝 需要手动完成的步骤

### 步骤 1: 推送工作流文件

由于 GitHub 的安全限制，工作流文件需要手动推送。请运行：

```bash
cd /Users/summer_xia/tripaustrilia
git push origin main
```

如果仍然失败，你可以：
- 在 GitHub 网页上直接创建 `.github/workflows/deploy.yml` 文件
- 或者更新你的 Personal Access Token，添加 `workflow` 权限

### 步骤 2: 启用 GitHub Pages

1. 访问仓库：https://github.com/Summerdodesign/tripaustrilia
2. 点击 **Settings**（设置）
3. 在左侧菜单找到 **Pages**
4. 在 **Source** 部分：
   - 选择 **GitHub Actions**
5. 点击 **Save**

### 步骤 3: 等待部署完成

1. 点击仓库顶部的 **Actions** 标签
2. 查看 "Deploy to GitHub Pages" 工作流
3. 等待部署完成（通常需要 1-2 分钟）

### 步骤 4: 访问网站

部署完成后，你的网站将在以下地址可用：

**https://summerdodesign.github.io/tripaustrilia/**

## 🔧 如果遇到问题

### 问题：Actions 工作流没有运行

- 确保已启用 GitHub Actions（Settings → Actions → General → Allow all actions）
- 确保工作流文件已推送到仓库

### 问题：网站显示 404

- 检查 `vite.config.js` 中的 `base` 路径是否正确（应该是 `/tripaustrilia/`）
- 确保 GitHub Pages 的 Source 设置为 **GitHub Actions**，而不是 main 分支

### 问题：资源加载失败

- 确保所有资源路径使用相对路径或正确的 base 路径
- 检查浏览器控制台的错误信息

## 📦 手动部署（备选方案）

如果 GitHub Actions 不工作，可以使用手动部署：

1. 本地构建：
```bash
npm run build
```

2. 将 `dist` 文件夹的内容推送到 `gh-pages` 分支

3. 在 GitHub Pages 设置中选择 `gh-pages` 分支作为源

