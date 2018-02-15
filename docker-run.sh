#!/bin/bash

docker run --name mssql-full \
-e ACCEPT_EULA=Y \
-e SA_PASSWORD=Yukon900 \
-e MSSQL_PID=Developer \
-p 1431:1433 \
-d \
ericskang/mssql-server-full:latest

docker ps

docker exec -ti mssql-full bash 

cd /var/opt/mssql/backup
bash ./database_files.sh

sqlcmd -Usa -PYukon900 -i restore.sql

#clean up
docker rm -f mssql-full
docker rmi -f ericskang/mssql-server-full:latest