#!/bin/bash

# Test Redis connection
REDIS_HOST=redis
REDIS_PORT=6379

# Test if Redis is responding to a basic command
redis-cli -p $REDIS_HOST -p $REDIS_PORT PING

