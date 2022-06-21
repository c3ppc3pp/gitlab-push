FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache git

COPY push.sh /push.sh

RUN chmod +x /push.sh && \
    git config --global --add safe.directory /github/workspace

ENTRYPOINT ["/push.sh"]
