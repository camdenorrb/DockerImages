FROM bellsoft/liberica-openjdk-alpine-musl

RUN apk update && apk add --no-cache bash git && \
    adduser -D container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]