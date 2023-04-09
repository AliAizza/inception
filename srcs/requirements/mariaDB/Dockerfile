FROM    debian:buster

RUN apt-get -y update && apt-get -y install mariadb-server

ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_ROOT_PASSWORD

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY script.sh .

COPY data.sql .

RUN chmod 777 script.sh

RUN bash script.sh

CMD ["mysqld_safe"]