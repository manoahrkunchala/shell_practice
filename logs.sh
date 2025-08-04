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