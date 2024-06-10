WORDPRESS_DIR="/var/www/html/wordpress"

if [ ! -f "$WORDPRESS_DIR/wp-config.php" ]; then
   echo "SETUP WORDPRESS .... .... .... ⚒"
	wp core download --allow-root
    wp config create --dbname=$MARIADB_DATABASE --dbuser=$MARIADB_USER --dbpass=$MARIADB_PASSWORD --dbhost="mariadb:3306" --allow-root
    # Install WordPress
    wp core install --url="emohamed.42.fr" --title="emohamedd" --admin_user=$WORDPRESS_ADMIN --admin_password=$ADMIN_PASSWORD --admin_email="$WORDPRESS_ADMIN@example.com" --allow-root
	wp user create $USER_WORDPRESS $USER_EMAIL --role=editor --user_pass=$USER_PASS  --allow-root
else
    echo "WordPress is already installed. ⚙️"
fi

$@