#!/bin/bash

# 一键推送脚本
# 自动添加、提交并推送到 GitHub

cd /Users/summer_xia/tripaustrilia

echo "📦 检查更改..."
git status --short

echo ""
echo "📝 添加所有更改..."
git add -A

echo ""
echo "💾 提交更改..."
git commit -m "更新代码: $(date '+%Y-%m-%d %H:%M:%S')"

echo ""
echo "🚀 推送到 GitHub..."
git push origin main

echo ""
echo "✅ 完成！"
echo "📍 仓库地址: https://github.com/Summerdodesign/tripaustrilia"

