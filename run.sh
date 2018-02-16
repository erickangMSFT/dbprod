#!/bin/bash

docker run --name mssql-full \
-e ACCEPT_EULA=Y \
-e SA_PASSWORD=Yukon900 \
-e MSSQL_PID=Developer \
-p 1431:1433 \
--mount source=sqldata,target=/var/opt/mssql/data \
--mount source=sqlbackup,target=/var/opt/mssql/backup \
-d \
ericskang/mssql-server-full:latest

docker ps

#clean up
# docker rm -f mssql-full
# docker rmi -f ericskang/mssql-server-full:latest