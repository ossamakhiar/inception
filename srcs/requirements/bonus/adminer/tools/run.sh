#!/bin/bash

# sed -i "s/localhost/mariadb/" /var/www/html/index.php
# sed -i "s/your_database/$db_name/" /var/www/html/index.php
# sed -i "s/your_username/$db_user/" /var/www/html/index.php
# sed -i "s/your_password/$db_password/" /var/www/html/index.php

# service php7.4-fpm start

echo "Adminer running..."

# nginx -g "daemon off;"

php -S 0.0.0.0:80 -t /var/www/html/