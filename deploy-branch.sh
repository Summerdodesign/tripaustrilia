#!/bin/bash

# GitHub Pages 分支部署脚本
# 将构建后的文件推送到 gh-pages 分支

set -e

echo "🚀 开始部署到 GitHub Pages..."

# 构建项目
echo "📦 正在构建项目..."
npm run build

# 进入 dist 目录
cd dist

# 初始化 git（如果还没有）
if [ ! -d .git ]; then
    git init
    git checkout -b gh-pages
fi

# 添加所有文件
git add -A
git commit -m "Deploy to GitHub Pages" || echo "没有更改需要提交"

# 添加远程仓库（如果还没有）
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/Summerdodesign/tripaustrilia.git

# 推送到 gh-pages 分支
echo "📤 正在推送到 gh-pages 分支..."
git push -f origin gh-pages

echo "✅ 部署完成！"
echo "📍 网站地址: https://summerdodesign.github.io/tripaustrilia/"
echo ""
echo "⚠️  请在 GitHub 仓库设置中："
echo "   1. 进入 Settings → Pages"
echo "   2. Source 选择 'Deploy from a branch'"
echo "   3. Branch 选择 'gh-pages' 和 '/ (root)'"
echo "   4. 不要填写 Custom domain（留空）"

