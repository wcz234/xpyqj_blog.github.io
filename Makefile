# Hexo 博客 Makefile
# 简化常用命令操作

.PHONY: help install clean build serve deploy new draft publish

help: ## 显示帮助信息
	@echo "Hexo 博客快捷命令："
	@echo ""
	@echo "  make install    - 安装依赖"
	@echo "  make clean      - 清理生成文件"
	@echo "  make build      - 生成静态文件"
	@echo "  make serve      - 启动本地服务器"
	@echo "  make deploy     - 部署到GitHub Pages"
	@echo "  make new        - 创建新文章 (需要 TITLE=文章标题)"
	@echo "  make draft      - 创建草稿 (需要 TITLE=草稿标题)"
	@echo "  make publish    - 发布草稿 (需要 TITLE=草稿标题)"
	@echo "  make all        - 清理、生成、部署"
	@echo ""

install: ## 安装依赖
	npm install

clean: ## 清理生成文件
	npx hexo clean

build: ## 生成静态文件
	npx hexo generate

serve: ## 启动本地服务器
	npx hexo server

deploy: build ## 部署到GitHub Pages
	npx hexo deploy

new: ## 创建新文章 (使用: make new TITLE="文章标题")
ifndef TITLE
	@echo "错误: 请指定文章标题"
	@echo "使用: make new TITLE=\"文章标题\""
	@exit 1
endif
	npx hexo new "$(TITLE)"

draft: ## 创建草稿 (使用: make draft TITLE="草稿标题")
ifndef TITLE
	@echo "错误: 请指定草稿标题"
	@echo "使用: make draft TITLE=\"草稿标题\""
	@exit 1
endif
	npx hexo new draft "$(TITLE)"

publish: ## 发布草稿 (使用: make publish TITLE="草稿标题")
ifndef TITLE
	@echo "错误: 请指定草稿标题"
	@echo "使用: make publish TITLE=\"草稿标题\""
	@exit 1
endif
	npx hexo publish "$(TITLE)"

all: clean build deploy ## 清理、生成并部署

dev: clean ## 开发模式：清理、生成、启动服务器
	npx hexo generate
	npx hexo server

.DEFAULT_GOAL := help
