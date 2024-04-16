.DEFAULT_GOAL: lint
.NOTPARALLEL:
.SILENT:

lint:
	markdownlint **/*.md
@PHONY: lint

dev: lint
	hugo server --buildDrafts
@PHONY: dev