#!/bin/bash


USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"



if [ $USERID -ne 0 ]; then
   echo "please run the script as root user access"
   exit 1
fi

mkdir -p $LOGS_FOLDER

Validate()
{
    if [ $1 -ne 0 ]; then
     echo "$2 ... failed"
     exit 1

    else
       echo "$2 ... successful"
    fi
}


dnf install nginx -y &>> $LOGS_FILE
Validate $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
Validate $? "Installing Mysql"

dnf install nodejs -y 
Validate $? "Installing Nodejs"