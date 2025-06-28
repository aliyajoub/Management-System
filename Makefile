# Makefile for Grocery Management System

.PHONY: help setup start stop restart logs clean test lint format

help: ## Show this help
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

setup: ## Setup the project
	docker-compose build

# Development commands
start: ## Start the development environment
	docker-compose up -d

stop: ## Stop the development environment
	docker-compose down

restart: ## Restart the development environment
	docker-compose down
	docker-compose up -d

logs: ## Show logs
	docker-compose logs -f

clean: ## Clean the project
	docker-compose down -v
	rm -rf node_modules
	rm -rf frontend/node_modules
	rm -rf backend/node_modules

# Testing commands
test: ## Run tests
	docker-compose exec backend npm test
	docker-compose exec frontend npm test

lint: ## Run linting
	docker-compose exec backend npm run lint
	docker-compose exec frontend npm run lint

format: ## Format code
	docker-compose exec backend npm run format
	docker-compose exec frontend npm run format

# Database commands
db-migrate: ## Run database migrations
	docker-compose exec backend npm run db:migrate

db-seed: ## Run database seeds
	docker-compose exec backend npm run db:seed

db-reset: ## Reset database
	docker-compose exec backend npm run db:reset

# Production commands
build-prod: ## Build for production
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build

start-prod: ## Start production environment
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

stop-prod: ## Stop production environment
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml down