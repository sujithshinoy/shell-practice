#!/bin/bash


USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "please run the script as root user access"
exit 1
fi

Validate()
{
    if [ $1 -ne 0 ]; then
    echo "$2 ... failed"
    exit 1
    elif 
    echo "$2 ... successful"
fi
}


dnf install Nginx -y
Validate $? "Installing Nginx"

dnf install mysql -y
Validate $? "Installing mysql"

dnf install nodejs -y
Validate $? "Installing nodejs"