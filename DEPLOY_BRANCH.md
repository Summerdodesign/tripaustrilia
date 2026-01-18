# GitHub Pages 分支部署指南

## 🚀 快速部署

运行部署脚本：

```bash
cd /Users/summer_xia/tripaustrilia
./deploy-branch.sh
```

## 📝 手动部署步骤

### 1. 构建项目

```bash
npm run build
```

### 2. 进入 dist 目录并初始化 git

```bash
cd dist
git init
git checkout -b gh-pages
```

### 3. 提交并推送

```bash
git add -A
git commit -m "Deploy to GitHub Pages"
git remote add origin https://github.com/Summerdodesign/tripaustrilia.git
git push -f origin gh-pages
```

## ⚙️ GitHub 设置

### 重要：配置 GitHub Pages

1. 访问仓库：https://github.com/Summerdodesign/tripaustrilia
2. 点击 **Settings** → **Pages**
3. 在 **Source** 部分：
   - 选择 **"Deploy from a branch"**
   - Branch: 选择 **`gh-pages`**
   - Folder: 选择 **`/ (root)`**
4. **不要填写 Custom domain**（留空）
5. 点击 **Save**

## ⚠️ 常见错误

### 错误：Custom domain `deploy.yml` is already taken

**原因**：在 Custom domain 字段中错误地输入了工作流文件名 `deploy.yml`

**解决**：
- 将 Custom domain 字段**留空**
- 只配置 Source 为 "Deploy from a branch"
- 选择 `gh-pages` 分支

### 网站显示 404

- 确保 `vite.config.js` 中的 `base` 路径是 `/tripaustrilia/`
- 确保 GitHub Pages 设置正确
- 等待几分钟让 GitHub 处理部署

## 🌐 访问网站

部署完成后，网站地址：

**https://summerdodesign.github.io/tripaustrilia/**

## 🔄 更新网站

每次更新代码后，重新运行部署脚本：

```bash
./deploy-branch.sh
```

或者手动执行构建和推送步骤。

