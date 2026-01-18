#!/bin/bash

echo "🚀 TripAustralia - 一键创建并推送"
echo ""

# 检查仓库是否存在
echo "检查GitHub仓库..."
if git ls-remote --exit-code origin main &>/dev/null; then
    echo "✅ 仓库已存在，开始推送..."
    git push -u origin main
    echo "✅ 推送完成！"
    echo "📍 https://github.com/Summerdodesign/tripaustrilia"
    exit 0
fi

echo "⚠️  仓库尚未创建"
echo ""
echo "请先创建GitHub仓库："
echo "1. 访问: https://github.com/new"
echo "2. 仓库名: tripaustrilia"
echo "3. 选择: Public"
echo "4. 点击: Create repository"
echo ""
echo "创建完成后，再次运行此脚本："
echo "./一键推送.sh"
echo ""
echo "或者直接运行："
echo "git push -u origin main"

