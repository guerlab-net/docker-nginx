#!/bin/bash
version="1.20.2"

docker build -t guerlab/nginx --build-arg nginx_source_version=${version} ./base
docker tag guerlab/nginx guerlab/nginx:${version}

docker build -t guerlab/nginx:latest-crond ./crond
docker tag guerlab/nginx:latest-crond guerlab/nginx:${version}-crond

docker push guerlab/nginx
docker push guerlab/nginx:${version}
docker push guerlab/nginx:latest-crond
docker push guerlab/nginx:${version}-crond

