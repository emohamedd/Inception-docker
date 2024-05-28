FROM debian:latest

RUN apt-get update && apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./tools/init.sql /docker-entrypoint-initdb.d/.

RUN mkdir /run/mysqld

CMD /bin/sh -c "service mysql start && mysql < /docker-entrypoint-initdb.d/init.sql && /bin/bash"