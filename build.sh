#!/bin/bash
set -xe
PLAIN_NAME=co811-libreoffice
HUB_NAME=dhagberg/$PLAIN_NAME
SVN_NAME=svn.co811.org:5000/$PLAIN_NAME

docker build --pull -t $HUB_NAME .

# Tag and push if given
if [ "$1" = "push" ]; then
    docker push $HUB_NAME
    docker tag  $HUB_NAME $SVN_NAME
    docker push $SVN_NAME
fi
