<div align="center">

# 心平愈千疾 - 个人技术博客

> 我观观音观自在 我见真武见真我

[![Hexo](https://img.shields.io/badge/Hexo-7.3.0-blue?style=flat-square&logo=hexo)](https://hexo.io)
[![Theme](https://img.shields.io/badge/Theme-Butterfly-ff69b4?style=flat-square)](https://butterfly.js.org/)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)
[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen?style=flat-square)](https://wcz234.github.io)

[在线访问](https://wcz234.github.io) · [报告问题](https://github.com/wcz234/xpyqj_blog.github.io/issues) · [贡献指南](CONTRIBUTING.md)

</div>

---

## 📖 关于本项目

这是一个基于 **Hexo** 框架搭建的个人技术博客，使用 **Butterfly** 主题，托管在 GitHub Pages 上。博客专注于技术分享、学习笔记和个人思考。

### ✨ 特性

- 🎨 **优雅设计** - 使用 Butterfly 主题，界面简洁美观
- 📱 **响应式布局** - 完美支持移动端和桌面端
- ⚡ **快速加载** - 静态站点，访问速度快
- 🔍 **SEO 优化** - 搜索引擎友好
- 📝 **Markdown 写作** - 专注内容创作
- 🚀 **自动部署** - 一键部署到 GitHub Pages

## 🚀 快速开始

### 环境要求

- Node.js >= 14.0.0
- Git >= 2.0
- npm 或 yarn

### 安装步骤

1. **克隆仓库**
   ```bash
   git clone https://github.com/wcz234/xpyqj_blog.github.io.git
   cd xpyqj_blog.github.io
   ```

2. **切换到源码分支**
   ```bash
   git checkout hexo-source
   ```

3. **安装依赖**
   ```bash
   npm install
   # 或使用初始化脚本
   # Windows: scripts\init.bat
   # Linux/Mac: bash scripts/init.sh
   ```

4. **启动本地服务器**
   ```bash
   hexo server
   # 或使用 make 命令
   make serve
   ```

5. **访问博客**

   打开浏览器访问：http://localhost:4000

## 📝 使用指南

### 创建新文章

```bash
# 方式一：使用 Hexo 命令
hexo new "文章标题"

# 方式二：使用 Makefile（推荐）
make new TITLE="文章标题"

# 方式三：创建草稿
make draft TITLE="草稿标题"
```

### 发布草稿

```bash
# 方式一：Hexo 命令
hexo publish "草稿标题"

# 方式二：Makefile
make publish TITLE="草稿标题"
```

### 本地预览

```bash
# 清理缓存并启动服务器
make dev

# 或分步执行
hexo clean
hexo generate
hexo server
```

### 部署到 GitHub Pages

```bash
# 方式一：完整部署流程
make all

# 方式二：分步部署
hexo clean      # 清理缓存
hexo generate   # 生成静态文件
hexo deploy     # 部署到 GitHub Pages

# 方式三：使用快捷脚本
# Windows: deploy.bat
# Linux/Mac: bash deploy.sh
```

## 📁 项目结构

```
blog/
├── .github/                 # GitHub 配置
├── .vscode/                # VS Code 配置
├── docs/                   # 项目文档
├── scaffolds/              # 文章模板
├── scripts/                # 辅助脚本
├── source/                 # 源文件
│   ├── _posts/            # 文章目录
│   ├── _drafts/           # 草稿目录
│   └── images/            # 图片资源
│       ├── covers/        # 封面图
│       ├── posts/         # 文章配图
│       └── icons/         # 图标
├── themes/                 # 主题目录
├── _config.yml            # Hexo 配置
├── package.json           # 项目依赖
├── Makefile              # 快捷命令
└── README.md             # 项目说明
```

详细结构说明请查看 [项目结构文档](docs/PROJECT_STRUCTURE.md)

## 🔧 配置说明

### 网站配置

在 `_config.yml` 中修改网站基本信息：

```yaml
# 网站信息
title: 心平愈千疾
subtitle: 我观观音观自在 我见真武见真我
description: 分享技术心得，记录学习历程
author: wcz234
language: zh-CN
timezone: Asia/Shanghai

# 网址
url: https://wcz234.github.io
```

### 主题配置

当前使用 Butterfly 主题，主题配置在 `_config.yml` 底部：

```yaml
# 主题
theme: butterfly
```

更多主题配置请参考 [Butterfly 主题文档](https://butterfly.js.org/)

## 🌿 分支说明

本项目使用双分支管理：

| 分支 | 说明 | 内容 |
|-----|------|------|
| `hexo-source` | 源码分支 | Hexo 完整源码、配置、文章等 |
| `hexo-blog` | 部署分支 | 生成的静态网站文件（自动） |

**开发流程：**
1. 在 `hexo-source` 分支进行开发
2. 使用 `hexo deploy` 自动推送到 `hexo-blog` 分支
3. GitHub Pages 自动从 `hexo-blog` 分支部署

## 📚 常用命令

### Hexo 命令

| 命令 | 说明 |
|-----|------|
| `hexo new "标题"` | 创建新文章 |
| `hexo new draft "标题"` | 创建草稿 |
| `hexo publish "标题"` | 发布草稿 |
| `hexo clean` | 清理缓存 |
| `hexo generate` | 生成静态文件 |
| `hexo server` | 启动本地服务器 |
| `hexo deploy` | 部署到远程 |

### Makefile 命令（推荐）

| 命令 | 说明 |
|-----|------|
| `make help` | 显示帮助信息 |
| `make install` | 安装依赖 |
| `make clean` | 清理缓存 |
| `make build` | 生成静态文件 |
| `make serve` | 启动本地服务器 |
| `make deploy` | 部署博客 |
| `make new TITLE="标题"` | 创建新文章 |
| `make draft TITLE="标题"` | 创建草稿 |
| `make publish TITLE="标题"` | 发布草稿 |
| `make dev` | 开发模式 |
| `make all` | 清理、生成、部署 |

## 🎨 写作规范

### Front Matter 模板

```yaml
---
title: 文章标题
date: 2025-11-05 12:00:00
updated: 2025-11-05 12:00:00
tags:
  - 标签1
  - 标签2
categories:
  - 分类名
description: 文章简介
cover: /images/covers/cover-name.jpg
top: false
---
```

### 图片管理

- **封面图**: `source/images/covers/`
- **文章配图**: `source/images/posts/文章名/`
- **图标**: `source/images/icons/`

在文章中引用图片：
```markdown
![图片描述](/images/posts/文章名/图片名.jpg)
```

## 🛠️ 开发工具

### VS Code 扩展推荐

- **Prettier** - 代码格式化
- **Markdown All in One** - Markdown 增强
- **Markdown Preview Enhanced** - Markdown 预览
- **EditorConfig** - 统一编辑器配置

安装推荐扩展：
```bash
# VS Code 会自动提示安装 .vscode/extensions.json 中的扩展
```

## 🤝 贡献

欢迎贡献！请阅读 [贡献指南](CONTRIBUTING.md) 了解详情。

### 贡献流程

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add some amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 创建 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 📞 联系方式

- **博客**: https://wcz234.github.io
- **GitHub**: [@wcz234](https://github.com/wcz234)
- **Email**: 2574070432@qq.com

## 🙏 鸣谢

- [Hexo](https://hexo.io/) - 快速、简洁且高效的博客框架
- [Butterfly](https://butterfly.js.org/) - 优雅的 Hexo 主题
- [GitHub Pages](https://pages.github.com/) - 免费的静态网站托管

## 📊 项目状态

- **版本**: 1.0.0
- **Hexo**: 7.3.0
- **Node.js**: >= 14.0.0
- **最后更新**: 2025-11-05

---

<div align="center">

**[⬆ 回到顶部](#心平愈千疾---个人技术博客)**

Made with ❤️ by wcz234

</div>
