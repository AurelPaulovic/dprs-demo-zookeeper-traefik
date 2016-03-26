#!/usr/bin/env bash
docker run --rm -ti --net=container:zookeeper com.aurelpaulovic/zookeeper-alpine /opt/zookeeper/bin/zkCli.sh -server 127.0.0.1:2181
