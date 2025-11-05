#!/bin/bash
# Hexo 博客自动化部署脚本 - 支持双分支管理

echo "🚀 Hexo 博客自动化部署开始..."

# 检查当前分支
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "hexo-source" ]; then
    echo "❌ 错误：请先切换到 hexo-source 分支"
    echo "💡 执行: git checkout hexo-source"
    exit 1
fi

# 检查是否有未提交的更改
if ! git diff --quiet || ! git diff --cached --quiet; then
    echo "📝 发现未提交的更改，正在提交..."
    git add .
    git commit -m "🎨 自动提交博客源码

$(git log -1 --pretty=format:'%h')

🤖 Generated with Hexo Auto Deploy Script

Co-Authored-By: Claude <noreply@anthropic.com>"
fi

echo "🧹 清理缓存和生成的文件..."
hexo clean

echo "📝 生成静态站点文件..."
hexo generate

echo "🚀 部署到 GitHub Pages (hexo-blog 分支)..."
hexo deploy

echo "📊 推送源码到远程仓库..."
git push origin hexo-source

echo ""
echo "✅ 部署完成！"
echo "🌐 博客地址: https://wcz234.github.io"
echo "⏳ GitHub Pages 需要时间处理，请等待 2-5 分钟"
echo ""
echo "📍 分支状态:"
echo "  - 源码分支: hexo-source (✅ 已推送)"
echo "  - 部署分支: hexo-blog (✅ 已推送)"
echo ""
echo "📞 访问信息:"
echo "  - 博客首页: https://wcz234.github.io"
echo "  - 源码仓库: https://github.com/wcz234/xpyqj_blog.github.io/tree/hexo-source"

# 询问是否要打开博客
read -p "🌐 是否要打开博客查看？(y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    start https://wcz234.github.io
    echo "🎉 已打开博客页面！"
fi

echo "💫 部署脚本执行完成！"