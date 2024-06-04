FROM debian:latest

RUN apt-get update && apt-get install -y php-mysql

RUN apt-get update && \
    apt-get install -y php8.2-cli \
    php8.2 \
    php8.2-fpm \
    php8.2-mysql \
    curl 

COPY ./tools/init_wp.sh .

RUN chmod 777 init_wp.sh

CMD [ "sh", "init_wp.sh" ]