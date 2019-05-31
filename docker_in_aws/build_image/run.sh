#!/bin/bash

# build image and add tag
docker build -t ex_docker_in_aws:0.0.1  .
docker tag ex_docker_in_aws:0.0.1 719709800508.dkr.ecr.us-east-1.amazonaws.com/ex_docker_in_aws:0.0.1

# login to ecr
eval "$(aws ecr get-login --no-include-email)"

# create new ecr repository
aws ecr create-repository --repository-name ex_docker_in_aws

# push tag to remote
docker push 719709800508.dkr.ecr.us-east-1.amazonaws.com/ex_docker_in_aws:0.0.1
