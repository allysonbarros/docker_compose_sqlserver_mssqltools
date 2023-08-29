#! /bin/bash
/opt/mssql-tools/bin/sqlcmd -S sqlserver -U sa -P SqlServer2022! -Q "
    RESTORE DATABASE pgdweb FROM DISK='/tmp/backups/PGCADE_FULL_20230519_000338.bak'
    WITH MOVE 'pgdweb' TO '/var/opt/mssql/data/pgdweb.mdf', MOVE 'pgdweb_log' TO '/var/opt/mssql/data/pgdweb_log.ldf',
    REPLACE
"