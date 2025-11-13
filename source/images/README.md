# 📸 图片资源管理指南

本目录用于存放博客的所有图片资源，按照用途进行分类管理。

---

## 📁 目录结构

\`\`\`
images/
├── covers/      # 文章封面图 (推荐尺寸: 1200x630px)
├── posts/       # 文章内容配图 (按文章名称分文件夹)
├── icons/       # 网站图标、Logo等
└── README.md    # 本说明文件
\`\`\`

---

## 🎨 图片规范

### 封面图 (covers/)

**用途**: 文章列表和文章顶部的封面图

**推荐规格**:
- 尺寸: \`1200 x 630px\` 或 \`16:9\` 比例
- 格式: JPG (质量85-90) 或 WebP
- 大小: < 300KB

**命名规范**:
\`\`\`
default-1.jpg          # 默认封面图1
default-2.jpg          # 默认封面图2
article-title.jpg      # 文章专属封面
\`\`\`

**使用方式**:
\`\`\`markdown
---
cover: /images/covers/article-title.jpg
---
\`\`\`

### 文章配图 (posts/)

**用途**: 文章内容中的插图、截图等

**推荐规格**:
- 尺寸: 宽度不超过 \`1200px\`
- 格式: PNG (截图) / JPG (照片) / SVG (图标)
- 大小: < 500KB

**使用方式**:
\`\`\`markdown
![图片描述](/images/posts/文章标题/image-1.png)
\`\`\`

### 图标资源 (icons/)

**用途**: 网站Logo、Favicon、社交媒体图标等

---

## 🚀 图片优化建议

### 1. 压缩工具

推荐使用以下工具压缩图片：

- **在线工具**:
  - [TinyPNG](https://tinypng.com/) - PNG/JPG压缩
  - [Squoosh](https://squoosh.app/) - Google开发的图片优化工具

---

## 🎯 图片来源推荐

### 免费高质量图片网站

- **[Unsplash](https://unsplash.com/)** - 高质量免费图片
- **[Pexels](https://www.pexels.com/)** - 免费图片和视频
- **[Pixabay](https://pixabay.com/)** - 免费图片、插画

---

<div align="center">

**遵循这些规范，让你的博客图片加载飞快！** ⚡

</div>
