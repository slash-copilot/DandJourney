include .env

.PHONY: all

build:
	docker build -t dandjourney .

logs:
	docker logs -f dandjourney

push:
	docker tag dandjourney:latest ${DOCKER_USER}/dandjourney:${DOCKER_TAG}
	docker push ${DOCKER_USER}/dandjourney:${DOCKER_TAG}