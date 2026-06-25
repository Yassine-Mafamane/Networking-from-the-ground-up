FROM alpine:latest

RUN apk add --no-cache frr busybox tini

RUN sed -i 's/^ospfd=no/ospfd=yes/' /etc/frr/daemons

COPY --chmod=0755 docker/router/init.sh /init.sh

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/init.sh"]
