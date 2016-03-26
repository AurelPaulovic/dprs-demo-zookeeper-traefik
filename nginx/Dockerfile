FROM alpine:3.3
MAINTAINER Aurel Paulovic <aurel.paulovic@gmail.com>

# install nginx
RUN apk add --update nginx \
     && rm -rf /var/cache/apk/*

# configuration
COPY src/nginx.conf /etc/nginx/nginx.conf

# redirect access and error logs to dockers stdout/stderr to play nicely with log collecting
RUN ln -sf /dev/stdout /tmp/access.log \
    && ln -sf /dev/stderr /tmp/error.log

# create default html contents
COPY src/index.html /usr/share/nginx/html/index.html

# run nginx as nobody (otherwise main proces would run as root)
USER nobody

# we can not use port 80 because we are running as nobody
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

