#!/bin/bash


USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "please run the script as root user access"
exit 1
fi

echo "Installing the Nginx"
dnf install nginx -y


if [ $? -ne 0 ]; then
echo "Nginx installation failed"
exit 1
elif [ $? -eq 0 ]; then
echo "Nginx installation is successful"
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
echo "mysql installation failed"
exit 1
elif [ $? -eq 0 ]; then
echo "mysql installation is successful"
fi


dnf install nodejs -y
if [ $? -ne 0 ]; then
echo "nodejs installation failed"
exit 1
elif [ $? -eq 0 ]; then
echo "nodejs installation is successful"
fi