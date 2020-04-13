#!/bin/sh

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker buildx create --use

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
