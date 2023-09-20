FROM debian:bullseye

RUN	apt-get update -y

RUN apt-get install -y vsftpd

RUN apt-get install -y vim

COPY conf/vsftpd.conf /tmp/vsftpd.conf

# ENV ftp_user=ftp_usr
# ENV ftp_usr_pass=12345

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

CMD ["/script.sh"]