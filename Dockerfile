FROM centos:7

ENV KONG_VERSION 0.10.3

RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm && \
    yum clean all

RUN adduser -d /usr/local/kong -u 1000 -s /bin/false kong && chown -R kong /usr/local/kong
