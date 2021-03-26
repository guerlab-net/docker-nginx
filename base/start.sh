#!/bin/bash
if [ "$NAMESERVER" == "" ]; then
	export NAMESERVER=`cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' '`
fi

envsubst '$NAMESERVER' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx
