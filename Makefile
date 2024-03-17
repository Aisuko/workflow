DOCKER_IMAGE=helloworld
TAG=latest

docker:
	docker build -t $(DOCKER_IMAGE):$(TAG) .