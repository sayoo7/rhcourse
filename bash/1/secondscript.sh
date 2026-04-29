#!/usr/bin/bash

systemctl is-active mariadb > /dev/null 2>&1
MARIADB_ACTIVE=$?

systemctl is-active postgresql > /dev/null 2>&1
POSTGRESQL_ACTIVE=$?

if [[ "$MARIADB_ACTIVE" -eq 0 ]]; then
    mysql
elif [[ "$POSTGRESQL_ACTIVE" -eq 0 ]]; then
    psql
else
    sqlite3
fi
