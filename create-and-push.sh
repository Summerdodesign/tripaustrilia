#!/bin/bash

# TripAustralia - 创建GitHub仓库并推送代码

echo "🚀 开始创建GitHub仓库并推送代码..."

# 检查是否安装了GitHub CLI
if command -v gh &> /dev/null; then
    echo "✅ 检测到GitHub CLI，使用gh创建仓库..."
    cd /Users/summer_xia/tripaustrilia
    gh repo create tripaustrilia --public --source=. --remote=origin --push
    echo "✅ 完成！"
    exit 0
fi

# 如果没有GitHub CLI，提示用户手动创建
echo "⚠️  未检测到GitHub CLI"
echo ""
echo "请按照以下步骤操作："
echo ""
echo "1. 访问 https://github.com/new"
echo "2. 仓库名称填写: tripaustrilia"
echo "3. 选择 Public"
echo "4. 不要勾选任何初始化选项"
echo "5. 点击 'Create repository'"
echo ""
echo "创建完成后，运行以下命令推送代码："
echo "cd /Users/summer_xia/tripaustrilia"
echo "git push -u origin main"
echo ""

