.DEFAULT_GOAL := help

all: format lint

format: ## format all .tf files
	terraform fmt

lint: ## validate semantic correctness of all .tf files
	terraform validate

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
