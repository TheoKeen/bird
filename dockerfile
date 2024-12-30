FROM alpine:3.21

RUN apk add --no-cache bird=2.15.1-r0 \
    tcpdump \
    iproute2


COPY ./entrypoint /

RUN chmod 700 /entrypoint

ENTRYPOINT ["/entrypoint"]
