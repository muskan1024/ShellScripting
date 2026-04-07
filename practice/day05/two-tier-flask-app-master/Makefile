D_C := docker-compose

OS := $(shell uname)

build:
	@echo "Running in $(OS)"
	$(D_C) build

up:
	$(D_C) up -d

down: 
	$(D_C) down

clean: 
	docker system prune -y

status:
	docker ps
