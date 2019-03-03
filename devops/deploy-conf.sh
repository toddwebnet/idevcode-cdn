#!/usr/bin/env bash

[ -e ../../docker/nginx/sites/cdn.dev.idevcode.com.conf ] && rm ../../docker/nginx/sites/cdn.dev.idevcode.com.conf
cp ./cdn.dev.idevcode.com.conf ../../docker/nginx/sites/cdn.dev.idevcode.com.conf
