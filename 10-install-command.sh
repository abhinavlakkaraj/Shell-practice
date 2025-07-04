#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
else
    echo "You are running root access"
fi 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echov"ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are running with root access"
fi  

if [ $? -eq 0 ]
then 
    echo "Installing Mysql is Success"
else 
    echo "Installing Mysql is Failure"
fi         
dnf install mysql -y 

if [ $? -ne 0]
then 
    echo "Mysql is not installed .... going to install it"
    dnf install mysql -y
    if[ $? -ne 0 ]
    then 
        echo "Installing Mysql is ... SUCCESS"
    else 
        echo "Installing Mysql is ... FAILURE"
        exit 1
    fi 
else 
    echo "Mysql is already installed... Nothing to do"        
fi     