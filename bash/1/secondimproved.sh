#!/usr/bin/bash

if systemctl is-active mariadb > /dev/null 2>&1; then
    mysql
elif systemctl is-active postgresql > /dev/null 2>&1; then
    psql
else
    sqlite3
fi
