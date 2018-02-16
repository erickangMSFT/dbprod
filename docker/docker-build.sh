#!/bin/sh

docker rmi -f ericskang/mssql-server-full:latest

docker build . --rm -t ericskang/mssql-server-full:latest

docker rmi -f $(docker images -f "dangling=true" -q)

docker push ericskang/mssql-server-full:latest