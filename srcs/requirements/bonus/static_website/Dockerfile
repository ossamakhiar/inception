FROM debian:bullseye

RUN apt-get update -y && apt-get install python3 -y

COPY ./tools/guarder /var/www/html

WORKDIR /var/www/html

CMD ["python3", "-m", "http.server"]
