FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y nginx

RUN apt-get install -y vim

RUN mkdir -p /etc/nginx/ssl

RUN mkdir /var/run/nginx

COPY conf/myconf.conf /var/run/nginx/mycert.conf

RUN apt-get install -y openssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -config /var/run/nginx/mycert.conf

COPY conf/nginx.conf /etc/nginx/nginx.conf

# RUN chmod 766 

CMD ["nginx", "-g", "daemon off;"]

