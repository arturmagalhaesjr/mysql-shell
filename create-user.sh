#!/bin/bash

database="$1"
user="$1"
password="$2"

if [ ! $1 ]; then
   echo "Precisa informar o usuario"
   exit;
fi

if [ ! $2 ]; then
   echo "Precisa informar a senha"
   exit;
fi

mysql -u root -p -Bse "CREATE DATABASE $database; CREATE USER '$user'@'localhost' IDENTIFIED BY '$password'; GRANT ALL PRIVILEGES ON $database.* TO '$user'@'localhost';"

