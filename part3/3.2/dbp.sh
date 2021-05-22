#!/bin/sh

read -p "Docker Hub username: " HUB_USER

docker login --username $HUB_USER

read -p "Repository URL: " REPO_URL

git clone $REPO_URL

REPO_NAME=$(basename $REPO_URL)

IMAGE=${HUB_USER}/${REPO_NAME}

cd $REPO_NAME && docker build -t $IMAGE .

docker push $IMAGE
