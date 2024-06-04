FROM debian:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl


COPY ./conf/default.conf /etc/nginx/nginx.conf

RUN mkdir /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/emohamed.key \
    -out /etc/nginx/ssl/emohamed.crt  \
    -subj "/C=MA/L=Tetouan/O=42/OU=1337 MED/CN=emohamed.42.fr"

CMD ["nginx", "-g", "daemon off;"]