FROM debian:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl


COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./ssl/nginx.crt /etc/nginx/ssl/nginx.crt
COPY ./ssl/nginx.key /etc/nginx/ssl/nginx.key

CMD ["nginx", "-g", "daemon off;"]