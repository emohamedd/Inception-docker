FROM debian:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl


COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY tools/cert.pem /etc/nginx/cert/server.pem
COPY tools/key.pem /etc/nginx/private/server.pem

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

