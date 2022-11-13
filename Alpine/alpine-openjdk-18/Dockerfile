FROM alpine

WORKDIR /root

RUN apk update && apk add --no-cache build-base libx11-dev libxcb-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev cups-dev alsa-lib-dev fontconfig-dev file zip unzip make bash git autoconf openjdk17 && \
    git clone --depth 1 --branch jdk-17-ga https://git.openjdk.org/jdk/

WORKDIR /root/jdk

COPY ./kat-build.sh kat-build.sh

RUN chmod +x kat-build.sh && \
    sh ./configure --openjdk-target=x86_64-unknown-linux-musl && \
    make product-images
