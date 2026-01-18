#!/bin/bash

# 一键推送脚本 - 自动处理所有情况

cd /Users/summer_xia/tripaustrilia

echo "🔄 步骤 1: 拉取远程最新代码..."
git pull origin main --no-rebase --no-edit || {
    echo "⚠️  拉取失败，尝试继续推送..."
}

echo ""
echo "📤 步骤 2: 推送到 GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "📍 仓库: https://github.com/Summerdodesign/tripaustrilia"
    echo "🌐 网站: https://summerdodesign.github.io/tripaustrilia/"
else
    echo ""
    echo "❌ 推送失败，可能是网络问题"
    echo "💡 建议：稍后重试，或使用 GitHub Desktop"
fi
