FROM debian:stretch
LABEL maintainer="KRYPTONIEX Developers <dev@kryptoniex.org>"
LABEL description="Dockerised KRYPTONIEXCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
