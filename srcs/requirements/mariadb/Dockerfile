FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 777 /var/run/mysqld

COPY ./tools/init.sh /home

RUN chmod 777 /home/init.sh

ENTRYPOINT [ "sh", "/home/init.sh"]

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]