FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache git

COPY push.sh /push.sh

RUN chmod +x /push.sh

ENTRYPOINT ["/push.sh"]
