#!/bin/bash
# build with a specific redis version + max_memory config in mb
VSITE_REDIS_VER=$1
docker build --build-arg VSITE_REDIS_VER=$VSITE_REDIS_VER . -t blackflysolutions/redis:$1
