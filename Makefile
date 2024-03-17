DOCKER_IMAGE=helloworld
TAG=latest

docker:
	docker build -t $(DOCKER_IMAGE):$(TAG) .


###################################################################################################
# Commit and recommit changes to github
.PONY: commit
commit:
	@echo "Committing changes..."
	@git add .
	@git commit -s -m"${message}"
	@git push origin main
	@git log -1
	@echo "Changes committed and pushed to github."

.PONY: recommit
recommit:
	@echo "Committing changes..."
	@git add .
	@git commit -s --amend --no-edit
	@git push -f origin main
	@git log -1
	@echo "Changes committed and pushed to github."
