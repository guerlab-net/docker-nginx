#!/bin/bash
version="4.1"

docker build -t guerlab/nginx ./base
docker tag guerlab/nginx guerlab/nginx:${version}

docker build -t guerlab/nginx:latest-crond ./crond
docker tag guerlab/nginx:latest-crond guerlab/nginx:${version}-crond

docker push guerlab/nginx
docker push guerlab/nginx:${version}
docker push guerlab/nginx:latest-crond
docker push guerlab/nginx:${version}-crond

