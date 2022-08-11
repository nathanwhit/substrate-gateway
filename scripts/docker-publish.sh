#!/bin/bash

release=$1
tag=$2

docker buildx build . --platform "linux/amd64" \
    --push \
    -t "nathanwhitaker/substrate-gateway:$tag" \
    -t "nathanwhitaker/substrate-gateway:$release" || exit 1
