#!/bin/sh

sudo docker build -t ubuntu-apache:leger .
docker run -it -p 5000:80 ubuntu-apache:leger
docker images
