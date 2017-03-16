FROM alpine:latest
MAINTAINER Raj <raj47i@gmail.com>

ENV LANG en_US.UTF-8

COPY ./ /root/docker
RUN sh /root/docker/init.sh

VOLUME /data
WORKDIR /data

ENTRYPOINT ["/var/lib/postgresql/run.sh"]
CMD ["help"]
