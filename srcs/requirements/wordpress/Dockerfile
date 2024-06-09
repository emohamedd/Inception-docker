FROM	debian:latest

# Update the package lists for upgrades and new package installations, then install PHP 8.2
RUN		apt-get update && apt-get install -y php8.2 php8.2-fpm curl php8.2-mysql php8.2-cli

# Download the WP-CLI (a command line interface for WordPress)
RUN		curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Make the WP-CLI phar file executable and move it to /usr/local/bin so it can be run from anywhere
RUN		chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# Replace the PHP-FPM configuration to listen on port 9000 instead of a Unix socket
RUN     sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf

# Copy the script.sh file from the local machine to the Docker container's root directory
COPY	tools/script.sh /

# Make the script.sh file executable
RUN		chmod +x /script.sh

# Set the working directory in the Docker container to /var/www/html/wordpress
WORKDIR	/var/www/html/wordpress

# Set the script.sh file as the entry point of the Docker container
ENTRYPOINT ["sh", "/script.sh"]

# Expose port 9000 in the Docker container
EXPOSE	9000

# Set the default command to run when the Docker container starts to run PHP-FPM in the foreground
CMD ["php-fpm8.2" , "-F"]