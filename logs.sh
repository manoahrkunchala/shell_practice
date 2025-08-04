#!/bin/bash

user_id=$(id -u)
echo $user_id

if [$user_id -ne 0]
then 
    echo "ERROR:: please run this with root access"
    exit 1
else 
    echo "you are running with access"
fi 


VALIDATE(){
    if [ $? -eq 0]
    then 
        echo "installing $2 is success..."
    else 
        echo "installing $2 is failure"
    fi
}

dnf list installed python3
if [$? -ne 0]
then
    #dnf uninstall python3 -y
    echo "python3 is not installed, it is going to be installed"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "python3 is laredy installed so nothing to do now, Thank you"
fi