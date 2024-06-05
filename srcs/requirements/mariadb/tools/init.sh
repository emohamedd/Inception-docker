#!/bin/bash

echo "FLUSH PRIVILEGES;" > init.sql
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" >> init.sql

echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> init.sql

echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> init.sql

echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';" >> init.sql

echo "FLUSH PRIVILEGES;" >> init.sql

mariadbd -u mysql --bootstrap < init.sql

rm init.sql

exec "$@"