echo "FLUSH PRIVILEGES;" >> data.sql
# create a database if it doesn't exist, and append it to the data.sql file
echo "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" >> data.sql

# create a user if it doesn't exist, and append it to the data.sql file
echo "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';" >> data.sql

# grant all privileges to the user for all databases and tables, and append it to the data.sql file
echo "GRANT ALL PRIVILEGES ON *.* TO '$MARIADB_USER'@'%';" >> data.sql

#  reloa) the privileges, and append it to the data.sql file
echo "FLUSH PRIVILEGES;" >> data.sql

# Run MariaDB in bootstrap mode and execute the commands in the data.sql file
mariadbd -u mysql --bootstrap < data.sql

# Remove the data.sql file
rm -f data.sql
# Execute the command that was passed to the script
$@