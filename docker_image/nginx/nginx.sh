#!/bin/bash

docker image pull nginx
docker container run -d --name nginx-test -p 8080:80 nginx
docker ps
