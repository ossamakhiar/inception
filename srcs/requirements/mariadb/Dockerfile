FROM debian:bullseye

EXPOSE 3306

RUN apt-get update -y

RUN apt-get install -y mariadb-server

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh /

RUN chmod +x /script.sh


ENV db_name=wordpress
ENV db_user=okhiar
ENV db_pass=okhiar123
ENV db_root_pass=12345
ENV db_hostname=mariadb

CMD ["./script.sh"]