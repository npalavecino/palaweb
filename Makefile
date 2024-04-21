.DEFAULT_GOAL: lint
.NOTPARALLEL:
.SILENT:

lint:
	markdownlint **/*.md
@PHONY: lint

dev: lint
	hugo server --buildDrafts
@PHONY: dev

build: lint
	hugo --gc --minify --cleanDestinationDir
.PHONY: build

upgrade: 
	hugo mod get -u ./...
	hugo mod tidy
@PHONY: upgrade