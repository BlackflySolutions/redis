#!/bin/sh
set -e
REDIS_MAXMEMORY=${VSITE_REDIS_MAXMEMORY:-800}
sed -i "s/VSITE_REDIS_MAXMEMORY/$REDIS_MAXMEMORY/" /usr/local/etc/redis/redis.conf
exec /usr/local/bin/docker-entrypoint.sh "${@}"
