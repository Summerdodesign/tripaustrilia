#!/bin/bash
# 自动推送脚本 - 如果仓库已创建，直接推送

cd /Users/summer_xia/tripaustrilia

# 尝试推送
if git push -u origin main 2>&1; then
    echo "✅ 代码已成功推送到GitHub！"
    echo "📍 仓库地址: https://github.com/Summerdodesign/tripaustrilia"
else
    echo "❌ 推送失败，可能原因："
    echo "   1. GitHub仓库尚未创建"
    echo "   2. 需要认证（token或SSH密钥）"
    echo ""
    echo "请先访问 https://github.com/new 创建仓库 'tripaustrilia'"
    echo "然后再次运行此脚本"
fi
