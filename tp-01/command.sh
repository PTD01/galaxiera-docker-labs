#!/bin/bash

docker build -t ubuntu-vim:latest
docker run -it ubuntu-vim:latest
docker images
docker inspect ubuntu-vim:latest
