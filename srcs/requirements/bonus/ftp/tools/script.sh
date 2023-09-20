#!/bin/sh

mkdir -p /var/run/vsftpd/empty

mkdir -p /var/www/wordpress
# echo hello >> /var/www/html/hello.txt

# cp /etc/vsftpd.conf /etc/vsftpd.conf.backup
mv /tmp/vsftpd.conf /etc/vsftpd.conf

# create a new user without password and set all the user informations to empty string
# to avoid promping when running (general electric comprehensive operating system)
adduser $ftp_user --disabled-password -gecos ""
echo "$ftp_user:$ftp_usr_pass" | chpasswd
chown -R $ftp_user:$ftp_user /var/www/wordpress

echo $ftp_user >> /etc/vsftpd.user_list


# sleep 5

echo "FTP starting..."
vsftpd /etc/vsftpd.conf
