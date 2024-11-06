#!/bin/bash

IMAGE_REPO=$1
IMAGE_TAG=$2

echo "${DOCKER_PASSWORD}" | docker login --username christinerobinson101 --password-stdin

docker build -t $IMAGE_REPO:$IMAGE_TAG .
docker tag $IMAGE_REPO:$IMAGE_TAG $IMAGE_REPO:latest

docker push $IMAGE_REPO:$IMAGE_TAG
docker push $IMAGE_REPO:latest
