#!/bin/sh

docker build . --rm -t ericskang/mssql-agent:latest
docker push
