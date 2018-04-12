#!/bin/bash

DOCKER_HOST_NAME="peterkaminski-gitolite"

printf "\nTrying without TLS\n"
curl --silent https://54.202.237.9:2376/images/json
echo "Error code: $?"

printf "\nTrying with TLS\n"
curl --silent https://54.202.237.9:2376/images/json \
  --cert ~/.docker/machine/machines/$DOCKER_HOST_NAME/cert.pem \
  --key ~/.docker/machine/machines/$DOCKER_HOST_NAME/key.pem \
  --cacert ~/.docker/machine/machines/$DOCKER_HOST_NAME/ca.pem
echo "Error code: $?"
