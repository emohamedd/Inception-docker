FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server nano

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && chmod 777 /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql && chmod 777 /var/lib/mysql

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

COPY tools/init.sh /home

RUN chmod +x /home/init.sh

ENTRYPOINT ["sh", "/home/init.sh"]

EXPOSE 3306

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]
