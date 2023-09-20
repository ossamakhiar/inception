#!/bin/bash

echo "starting Redis...."

if [ ! -f "/etc/redis/redis.conf.backup" ]; then

     #We create the .backup to notify the program if it exists, don't go to the loop anymore
    cp /etc/redis/redis.conf /etc/redis/redis.conf.backup

    sed -i "s/bind 127.0.0.1/#bind 127.0.0.1/" /etc/redis/redis.conf
    # sed -i "s/# requirepass foobared/requirepass $REDIS_PWD" /etc/redis.conf
    sed -i "s/# maxmemory <bytes>/maxmemory 20mb/" /etc/redis/redis.conf
    sed -i "s/# maxmemory-policy noeviction/maxmemory-policy allkeys-lru/" /etc/redis/redis.conf

fi


echo "redis server starting..."

# run redis-server and disbale protected-mode to make Redis server to accept external connections
redis-server --protected-mode no