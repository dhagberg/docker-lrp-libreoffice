#!/bin/bash
set -xe
PLAIN_NAME=lrp-libreoffice
HUB_NAME=dhagberg/$PLAIN_NAME
CI_NAME=cga-ci:5000/$PLAIN_NAME

docker build --pull -t $HUB_NAME .

# Tag and push if given
if [ "$1" = "push" ]; then
    docker push $HUB_NAME
    docker tag  $HUB_NAME $CI_NAME
    docker push $CI_NAME
fi
