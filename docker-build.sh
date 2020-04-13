#!/bin/sh

echo "Building docker image: $IMAGE_NAME"
echo "With tag: $TAG"

docker buildx build --platform linux/amd64,linux/386,linux/ppc64le,linux/s390x,linux/arm64,linux/arm/v7 $TAG -t "$IMAGE_NAME" --push .
docker logout
