FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 777 /var/run/mysqld

COPY ./tools/init.sh .

RUN chmod +x init.sh

# ENTRYPOINT [ "sh", "init.sh"]
CMD ["yes"]
# CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]