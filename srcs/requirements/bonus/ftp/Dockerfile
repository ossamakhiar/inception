FROM debian:bullseye

RUN	apt-get update -y

RUN apt-get install -y vsftpd

RUN apt-get install -y vim

COPY conf/vsftpd.conf /etc/vsftpd.conf

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

CMD ["/script.sh"]