#!/bin/bash

echo "Starting mariadb..." 
service mariadb start

sleep 2

# echo "CREATE DATABASE IF NOT EXISTS $db_name ;" > queries.sql
# echo "CREATE USER IF NOT EXISTS '$db_user'@'localhost' IDENTIFIED BY '$db_password' ;" >> queries.sql
# echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' IDENTIFIED BY '$db_password' ;" >> queries.sql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_password' ;" >> queries.sql
# echo "FLUSH PRIVILEGES;"

# mysql -u < queries.sql

# # mysqladmin -u root -p$db_root_password shutdown

# # mysqld


mysql -e "CREATE DATABASE IF NOT EXISTS \`$db_name\`;"
mysql -e "CREATE USER IF NOT EXISTS \`$db_user\`@'localhost' IDENTIFIED BY '$db_pass';"
mysql -e "GRANT ALL PRIVILEGES ON \`$db_name\`.* TO \`$db_user\`@'%' IDENTIFIED BY '$db_pass';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pass';"

mysql -u root -p$db_root_pass -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$db_root_pass shutdown

echo "database have been created..."

mysqld_safe
