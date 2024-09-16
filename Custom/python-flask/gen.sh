#!/usr/bin/env bash

SOURCE_DIR=$(cd $(dirname ${BASHS_SOURCE:-0}) && pwd)
cd ${SOURCE_DIR}
mkdir -p certs
cd ${SOURCE_DIR}/certs

CN='xxx.xxx.xxx.xxx'
openssl genpkey -algorithm rsa -out priv.key -pkeyopt rsa_keygen_bits:2048
openssl req -new -key priv.key -sha256 -subj "/C=US/ST=Washington/L=Seattle/O=Amazon/CN=${CN}" -out server.csr
# If applying SSL to IP
echo "subjectAltName=IP:${CN}" >san.txt
openssl x509 -in server.csr -out server.crt -req -signkey priv.key -days 3650 -sha256 -extfile san.txt
# If applying SSL to domain
# openssl x509 -in server.csr -out server.crt -req -signkey priv.key -days 3650 -sha256
