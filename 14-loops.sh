#!/bin/bash

#!/bin/bash


USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"



if [ $USERID -ne 0 ]; then
   echo "please run the script as root user access" | tee -a $LOGS_FILE
   exit 1
fi

mkdir -p $LOGS_FOLDER

Validate()
{
    if [ $1 -ne 0 ]; then
     echo "$2 ... failed" | tee -a $LOGS_FILE
     exit 1

    else
       echo "$2 ... successful" | tee -a $LOGS_FILE
    fi
}

for package in $@
do
    dnf list installed $package &>> $LOGS_FILE
if [ $? -ne 0 ]; then
    echo "$package not installed, installing now"
    dnf install $package -y &>> $LOGS_FILE
    Validate $? "Installing $package"
else
    echo "$package is already installed,skipping installation"
fi

done

