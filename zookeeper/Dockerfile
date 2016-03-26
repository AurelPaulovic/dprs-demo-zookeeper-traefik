FROM frolvlad/alpine-oraclejdk8:latest
MAINTAINER Aurel Paulovic <aurel.paulovic@gmail.com>

RUN apk add --update curl \
    && apk add --update bash \
    && mkdir /opt \
    && curl -L https://www-eu.apache.org/dist/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz | tar xz -C /opt && mv /opt/zookeeper-3.4.8 /opt/zookeeper \
    && rm -rf /var/cache/apk/*

COPY src/zoo.cfg /opt/zookeeper/conf/zoo.cfg

CMD ["/opt/zookeeper/bin/zkServer.sh", "start-foreground"]
