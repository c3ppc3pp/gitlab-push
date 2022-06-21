FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache git

COPY push.sh /push.sh

ENTRYPOINT ["/bin/sh" "/push.sh"]
