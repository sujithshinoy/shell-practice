#!/bin/bash


USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "please run the script as root user access"
exit 1
fi

echo "Installing the Nginx"
dnf install nginx -y


