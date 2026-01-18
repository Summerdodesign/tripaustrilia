#!/bin/bash
# 使用GitHub API创建仓库

REPO_NAME="tripaustrilia"
USERNAME="Summerdodesign"

echo "请提供GitHub Personal Access Token"
echo "如果没有token，请访问: https://github.com/settings/tokens"
echo "创建token时需要 'repo' 权限"
echo ""
read -p "输入GitHub Token (或按Enter跳过): " GITHUB_TOKEN

if [ -z "$GITHUB_TOKEN" ]; then
    echo ""
    echo "⚠️  未提供Token，无法自动创建仓库"
    echo ""
    echo "请手动创建仓库："
    echo "1. 访问 https://github.com/new"
    echo "2. 仓库名称: tripaustrilia"
    echo "3. 选择 Public"
    echo "4. 创建后运行: git push -u origin main"
    exit 1
fi

echo "正在创建仓库..."
RESPONSE=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"$REPO_NAME\",\"description\":\"TripAustralia - 澳新钓鱼海洋度假之旅\",\"private\":false}")

if echo "$RESPONSE" | grep -q '"id"'; then
    echo "✅ 仓库创建成功！"
    echo "正在推送代码..."
    git push -u origin main
    echo "✅ 完成！仓库地址: https://github.com/$USERNAME/$REPO_NAME"
else
    echo "❌ 创建失败: $RESPONSE"
    echo "请检查token是否有效"
fi
