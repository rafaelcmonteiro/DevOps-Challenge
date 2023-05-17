# Makefile to build and upload images do dockerhub

ACCOUNT_USER_NAME=repository
TAG=1.0.0

# Token is required to make login
login:
	docker login -u $(ACCOUNT_USER_NAME)
# Building frontend image
front-build-push: login
	docker build -t $(ACCOUNT_USER_NAME)/frontend:$(TAG) front/. && docker push $(ACCOUNT_USER_NAME)/frontend:$(TAG)
# Building backend image
back-build-push: login
	docker build -t $(ACCOUNT_USER_NAME)/backend:$(TAG) back/. && docker push $(ACCOUNT_USER_NAME)/backend:$(TAG)
# Easy way to compose up, building images is not required though.
compose:
	docker compose up