FROM ericskang/mssql-server-full:base

WORKDIR /var/opt/mssql
RUN mkdir -p backup
WORKDIR /var/opt/mssql/backup
COPY ./scripts/*.sh ./
ENV MSSQLTOOLS_ROOT /opt/mssql-tools
ENV PATH "$MSSQLTOOLS_ROOT/bin:$PATH"

# Run SQL Server process
CMD /opt/mssql/bin/sqlservr