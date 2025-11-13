# Hexo 博客项目结构说明

## 📁 目录结构

```
blog/
├── .github/                 # GitHub 配置
│   └── dependabot.yml      # 依赖自动更新配置
├── .vscode/                # VS Code 配置
│   ├── settings.json       # 编辑器设置
│   └── extensions.json     # 推荐扩展
├── docs/                   # 项目文档
│   └── PROJECT_STRUCTURE.md
├── scaffolds/              # 文章模板
│   ├── draft.md           # 草稿模板
│   ├── page.md            # 页面模板
│   └── post.md            # 文章模板
├── scripts/                # 辅助脚本
│   ├── init.sh            # 初始化脚本 (Linux/Mac)
│   └── init.bat           # 初始化脚本 (Windows)
├── source/                 # 源文件目录
│   ├── _posts/            # 发布的文章
│   ├── _drafts/           # 草稿文章
│   ├── about/             # 关于页面
│   ├── categories/        # 分类页面
│   ├── tags/              # 标签页面
│   └── images/            # 图片资源
│       ├── covers/        # 文章封面
│       ├── posts/         # 文章内图片
│       └── icons/         # 图标资源
├── themes/                 # 主题目录
├── .deploy_git/           # 部署临时目录（自动生成）
├── public/                # 生成的静态文件（自动生成）
├── node_modules/          # 依赖包（自动生成）
├── .editorconfig          # 编辑器配置
├── .gitignore             # Git 忽略规则
├── _config.yml            # Hexo 主配置文件
├── _config.landscape.yml  # 主题配置（备份）
├── package.json           # 项目依赖
├── package-lock.json      # 依赖锁定文件
├── db.json               # Hexo 数据库（自动生成）
├── Makefile              # 快捷命令
├── deploy.sh             # 部署脚本 (Linux/Mac)
├── deploy.bat            # 部署脚本 (Windows)
├── README.md             # 项目说明
├── CHANGELOG.md          # 更新日志
├── CONTRIBUTING.md       # 贡献指南
└── 博客操作指南.md        # 详细操作指南
```

## 📝 核心文件说明

### 配置文件

#### `_config.yml`
Hexo 的主配置文件，包含：
- 网站基本信息（标题、描述、作者等）
- URL 配置
- 目录结构配置
- 主题配置
- 部署配置

#### `package.json`
Node.js 项目配置，定义：
- 项目元信息
- 依赖包列表
- npm 脚本命令

### 源文件目录 (source/)

#### `_posts/`
存放已发布的文章，这些文章会出现在博客上。

#### `_drafts/`
存放草稿文章，不会被发布，适合还在编写中的内容。

#### `images/`
建议的图片组织结构：
- `covers/` - 文章封面图
- `posts/` - 文章内容图片
- `icons/` - 网站图标、头像等

### 模板目录 (scaffolds/)

定义创建新文章时的默认模板：
- `post.md` - 新文章模板
- `draft.md` - 草稿模板
- `page.md` - 页面模板

### 主题目录 (themes/)

Hexo 主题文件。本项目使用 Butterfly 主题，
通过 npm 安装在 `node_modules/hexo-theme-butterfly/`。

## 🔄 自动生成的目录

以下目录由 Hexo 自动生成，已在 `.gitignore` 中忽略：

- `public/` - 生成的静态网站文件
- `.deploy_git/` - Git 部署临时目录
- `node_modules/` - npm 依赖包
- `db.json` - Hexo 数据库缓存

## 🎯 分支结构

### hexo-source (源码分支)
- 包含完整的 Hexo 项目源码
- 包括配置、文章、主题等
- 用于日常开发和维护

### hexo-blog (部署分支)
- 仅包含生成的静态文件
- 由 `hexo deploy` 自动推送
- 用于 GitHub Pages 展示

## 📦 资源管理建议

### 图片管理
1. **文章封面**: `source/images/covers/文章名-cover.jpg`
2. **文章配图**: `source/images/posts/文章名/图片名.jpg`
3. **网站图标**: `source/images/icons/`

### 文章组织
1. **技术文章**: 使用明确的分类和标签
2. **系列文章**: 使用统一的分类名
3. **草稿管理**: 未完成的文章放在 `_drafts/`

## 🛠️ 开发工具配置

### EditorConfig
统一不同编辑器的代码风格，确保：
- 使用 UTF-8 编码
- 使用 2 空格缩进
- 使用 LF 换行符

### VS Code
提供了推荐的扩展和编辑器设置，包括：
- Markdown 增强支持
- Prettier 代码格式化
- EditorConfig 支持

## 📚 更多信息

- [Hexo 官方文档](https://hexo.io/zh-cn/)
- [Butterfly 主题文档](https://butterfly.js.org/)
- [GitHub Pages 文档](https://docs.github.com/cn/pages)
