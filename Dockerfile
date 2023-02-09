FROM alpine:3.17

    RUN apk add --no-cache bash

    COPY ./crontab ./crontab.tmp

    RUN crontab crontab.tmp && rm -rf crontab.tmp

    COPY entrypoint .

    COPY ./scripts ./scripts

    CMD [ "/bin/sh", "entrypoint" ]
