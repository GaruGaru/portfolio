COMPOSE=docker/docker-compose.yml
VERSION=$(shell git rev-parse --short HEAD)
IMAGE=garugaru/portfolio

up:
	docker-compose -f ${COMPOSE} up

upd:
	docker-compose -f ${COMPOSE} up -d

down:
	docker-compose -f ${COMPOSE} down

build:
	docker build -t ${IMAGE}:${VERSION} -t ${IMAGE}:latest .

push:
	docker push ${IMAGE}:latest
	docker push ${IMAGE}:${VERSION}