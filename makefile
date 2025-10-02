# NestJS GraphQL API Makefile
# Simplified commands for running the project

.PHONY: help dev debug prod docker-build docker-run docker-run-prod docker-stop docker-logs docker-logs-prod

# Default target
help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'

# Development Commands
dev: ## Start the application in development mode with watch
	pnpm run start:dev

debug: ## Start the application in debug mode
	pnpm run start:debug

prod: ## Start the application in production mode
	pnpm run start:prod

# Docker Commands
docker-build: ## Build Docker images with version from package.json
	@echo "Building Docker images..."
	@APP_VERSION=$$(node -p "require('./package.json').version") docker-compose -f compose.build.yml build

docker-run: ## Run the application with Docker Compose (development)
	docker-compose -f compose.yml up -d

docker-run-prod: ## Run the application with Docker Compose (production)
	docker-compose -f compose.prod.yml up -d

docker-stop: ## Stop all Docker containers
	docker-compose -f compose.yml down
	docker-compose -f compose.prod.yml down

docker-logs: ## Show Docker container logs (development)
	docker-compose -f compose.yml logs -f

docker-logs-prod: ## Show production Docker container logs
	docker-compose -f compose.prod.yml logs -f
