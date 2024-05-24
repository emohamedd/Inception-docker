FROM debian:12

RUN apt-get update && apt-get install -y php-fpm  php8.2-fpm

COPY www.conf /etc/php/8.2/fpm/pool.d/.

CMD ["php-fpm8.2", "-F"]
