#!/bin/bash
wget https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v0.2/WideWorldImporters-Full.bak
wget https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2017.bak
wget https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak
wget https://raw.githubusercontent.com/erickangMSFT/dbprod/master/docker/scripts/wwi_restore.sql
wget https://raw.githubusercontent.com/erickangMSFT/dbprod/master/docker/scripts/adventureworks_restore.sql
wget https://raw.githubusercontent.com/erickangMSFT/dbprod/master/docker/scripts/adventureworksDW_restore.sql

sqlcmd -Usa -PYukon900 -i /var/opt/mssql/backup/wwi_restore.sql
sqlcmd -Usa -PYukon900 -i /var/opt/mssql/backup/adventureworks_restore.sql
sqlcmd -Usa -PYukon900 -i /var/opt/mssql/backup/adventureworksDW_restore.sql