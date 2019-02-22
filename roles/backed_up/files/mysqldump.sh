#! /bin/bash

TIMESTAMP=`date +%F-%R`
BACKUP_DIR="/var/mysqldump"
MYSQL=/usr/bin/mysql
MYSQLDUMP=/usr/bin/mysqldump

#mkdir -p "$BACKUP_DIR/mysql"
rm -rf $BACKUP_DIR/*

databases=`$MYSQL  -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema)"`

cd $BACKUP_DIR

for db in $databases; do
  $MYSQLDUMP --force  --databases $db > $db.sql 2> /dev/null
done

chown -R backup:backup $BACKUP_DIR
