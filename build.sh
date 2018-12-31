#!/bin/bash
nginxverson="2.1"

docker build -t guerlab/nginx ./base
docker tag guerlab/nginx guerlab/nginx:${nginxverson}

docker build -t guerlab/nginx:crond ./crond
docker tag guerlab/nginx:crond guerlab/nginx:${nginxverson}-crond

docker push guerlab/nginx