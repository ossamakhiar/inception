FROM debian:bullseye

RUN apt-get update -y && apt-get install -y nginx vim openssl

RUN mkdir -p /etc/nginx/ssl

RUN mkdir /var/run/nginx

COPY conf/myconf.conf /var/run/nginx/mycert.conf

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -config /var/run/nginx/mycert.conf

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY tools/run.sh /

RUN chmod +x /run.sh

CMD ["/run.sh"]
