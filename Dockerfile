FROM alpine:3.10
RUN apk update && \
    apk add --no-cache wget  && \
    apk add --no-cache unzip

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
