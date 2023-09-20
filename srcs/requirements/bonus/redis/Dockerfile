FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install -y redis-server vim

COPY tools/script.sh /

RUN chmod +x /script.sh

CMD ["/script.sh"]