#!/bin/sh
docker rmi -f ericskang/mssql-server-full:base

docker build . --rm -t ericskang/mssql-server-full:base

docker rmi -f $(docker images -f "dangling=true" -q)

docker push ericskang/mssql-server-full:base