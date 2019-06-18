#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-kryptoniexpay/kryptoniexd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/kryptoniexd docker/bin/
cp $BUILD_DIR/src/kryptoniex-cli docker/bin/
cp $BUILD_DIR/src/kryptoniex-tx docker/bin/
strip docker/bin/kryptoniexd
strip docker/bin/kryptoniex-cli
strip docker/bin/kryptoniex-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
