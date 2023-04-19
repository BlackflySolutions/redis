ARG VSITE_REDIS_VER=6-alpine
FROM redis:${VSITE_REDIS_VER}
COPY redis.conf /usr/local/etc/redis/redis.conf
# customized entrypoint to modify redis.conf
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
