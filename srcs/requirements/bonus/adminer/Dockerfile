FROM debian:bullseye

RUN apt-get update -y && apt-get -y install curl php7.4 php7.4-fpm php7.4-mysql php7.4-cli nginx

RUN curl -L https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -o /var/www/html/index.php

COPY tools/run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]

# ["php -S 0.0.0.0:80 -t /var/www/html/
# CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/"]
