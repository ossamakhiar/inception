anonymous_enable=YES
local_enable=YES
write_enable=YES
dirmessage_enable=YES
xferlog_enable=YES
connect_from_port_20=YES
ftpd_banner=Welcome to FTP server of inception!
chroot_local_user=YES
allow_writeable_chroot=YES
user_sub_token=$USER
local_root=/var/www/html

listen=YES
listen_port=21
listen_address=0.0.0.0
seccomp_sandbox=NO


pasv_enable=YES
pasv_min_port=21100
pasv_max_port=21110

userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO

secure_chroot_dir=/var/run/vsftpd

###############################
listen=YES
listen_port=21

anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022

ftpd_banner=Welcome to okhiar FTP service.
# chroot_local_user=YES
local_root=/var/www/wordpress

userlist_enable=YES
userlist_file=/etc/vsftpd.user_list
userlist_deny=NO

# Enable passive mode for better firewall compatibility.
# pasv_enable=YES
# pasv_min_port=40000
# pasv_max_port=40100
