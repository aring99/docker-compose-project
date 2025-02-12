#!/bin/bash

# Test Redis connection
docker exec -it redis_c bash -c "redis-cli PING"

