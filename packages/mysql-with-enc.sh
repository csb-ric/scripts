#!/bin/bash
# Run MySQL with encryption support
#
# To run this script on Codeship, add the following
# command to your project's setup commands:
# \curl -sSL https://raw.githubusercontent.com/csb-ric/scripts/master/packages/mysql-with-enc.sh | bash -s
#
sudo su -

echo "#
[mysqld]
early-plugin-load = keyring_file.so
keyring_file_data = /var/lib/mysql-keyring/keyring
" > "/etc/mysql/mysql.conf.d/mysqld.cnf"

/etc/init.d/mysql restart
