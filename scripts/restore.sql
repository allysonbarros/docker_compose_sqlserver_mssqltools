RESTORE DATABASE pgdweb FROM DISK='/tmp/backups/PGCADE_FULL_20230519_000338.bak'
WITH MOVE 'pgdweb' TO '/var/opt/mssql/data/pgdweb.mdf', MOVE 'pgdweb_log' TO '/var/opt/mssql/data/pgdweb_log.ldf';