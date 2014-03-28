#!/bin/sh
#openssl genrsa -des3 -out private-key.pem 2048
openssl genrsa -out private-key.pem 2048
openssl rsa -in private-key.pem -out public-key.pem -outform PEM -pubout
