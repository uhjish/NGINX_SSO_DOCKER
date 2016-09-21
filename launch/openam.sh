#!/bin/bash

docker run -e KEYSTORE_PASS=secret -v $PWD/config:/root \
  -v $PWD/server.keystore:/opt/server.keystore \
  -v /dev/urandom:/dev/random --name openam --link opendj \
  -p 8443:8443 -p 8080:8080 -d openam
