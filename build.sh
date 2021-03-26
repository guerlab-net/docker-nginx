#!/bin/bash
version="4.0"

docker build -t guerlab/nginx ./base
docker tag guerlab/nginx guerlab/nginx:${version}

docker build -t guerlab/nginx:crond ./crond
docker tag guerlab/nginx:latest-crond guerlab/nginx:${version}-crond

docker push guerlab/nginx
