# Makefile for Golang backend and Node.js frontend

# Variables
DOCKER_REPO=<your-docker-username-or-organization>

# Targets
.PHONY: all build push

all: build push

build: build-backend build-frontend

push: push-backend push-frontend

# Backend Targets
build-backend:
	@echo "Building Golang backend Docker image..."
	docker build -t $(DOCKER_REPO)/golang-backend ./backend
	@echo "Golang backend Docker image built successfully."

push-backend:
	@echo "Pushing Golang backend Docker image to Docker Hub..."
	docker push $(DOCKER_REPO)/golang-backend
	@echo "Golang backend Docker image pushed successfully."

# Frontend Targets
build-frontend:
	@echo "Building Node.js frontend Docker image..."
	docker build -t $(DOCKER_REPO)/nodejs-frontend ./frontend
	@echo "Node.js frontend Docker image built successfully."

push-frontend:
	@echo "Pushing Node.js frontend Docker image to Docker Hub..."
	docker push $(DOCKER_REPO)/nodejs-frontend
	@echo "Node.js frontend Docker image pushed successfully."
