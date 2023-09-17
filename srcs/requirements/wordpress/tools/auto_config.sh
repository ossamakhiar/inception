#!/bin/sh

config_file=/var/www/wordpress/wp-config.php

# to ensure that database has had time to launch correctly
sleep 12

if [ -f "$config_file" ]; then
	echo -e "\e[1;36mwp-config.php already exists. Skipping the configuration step.\e[0m"
	echo -e "\e[1;36mWordPress is already installed.\e[0m"
else
	cat /var/www/wordpress/wp-config-sample.php > $config_file

	sed -i "s/database_name_here/$db_name/" $config_file 
	sed -i "s/username_here/$db_user/" $config_file
	sed -i "s/password_here/$db_password/" $config_file
	sed -i "s/localhost/mariadb/" $config_file

	echo -e "\e[1;34mwp-config.php has been created and configured.\e[0m"

	wp core install --allow-root \
		--url=localhost \
		--title="My WordPress Site" \
		--admin_user=$wp_admin \
		--admin_password=$wp_admin_pass \
		--admin_email=ossama.khiar@gmail.com

	wp user create --allow-root $wp_user okhiar@gmail.com --user_pass=$wp_user_pass

	echo -e "\e[1;32mWordPress core installed and user created.\e[0m"
fi

# mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php


# wp config create	--allow-root \
#     --dbname=$db_name \
#     --dbuser=$db_user \
#     --dbpass=$db_password \
#     --dbhost=mariadb:3306 --path='/var/www/wordpress'


echo "FPM starting..."

php-fpm7.4 -F

echo "\e[1;31mFPM Not working\e[0m"