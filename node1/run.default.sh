#!/usr/bin/env bash
CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run --rm -ti --name nginx-node1 -p=8080:8080 -v ${CUR_DIR}/src/html:/usr/share/nginx/html:ro com.aurelpaulovic/nginx-alpine
