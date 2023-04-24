# Makefile to build and upload images do dockerhub

ACCOUNT_USER_NAME=rafaelcmonteiro1
TAG=1.0.0

# Token is required to make login
login:
	docker login -u $(ACCOUNT_USER_NAME)
front-build-push: login
	docker build -t $(ACCOUNT_USER_NAME)/frontend:$(TAG) front/. && docker push $(ACCOUNT_USER_NAME)/frontend:$(TAG)
back-build-push: login
	docker build -t $(ACCOUNT_USER_NAME)/backend:$(TAG) back/. && docker push $(ACCOUNT_USER_NAME)/backend:$(TAG)
compose:
	docker compose up