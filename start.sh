#!/bin/bash

#Validating if timezone is set to UTC
date_utc=`date +%Z`
if [[ $date_utc == "UTC" ]]; then
        echo "Timezone is set to UTC"
else
        echo "Timezone is not set to UTC"
fi

#Validating if ssh is installed
dpkg --list| grep -q openssh-server
if [ $? -eq 0 ]; then
        echo "ssh is installed"
else
        echo "ssh is not installed"
fi

#validating if ssh port is set to port22
grep -q 'Port 22' /etc/ssh/sshd_config
if [ $? -eq 0 ]; then
        echo "ssh is set to port22"
else
        echo "ssh is not set to port22"
fi

#validating if there is admin user
grep -q '^sudo:.*$' /etc/group
if [ $? -eq 0 ]; then
        echo "Admin user is installed"
else
        echo "Admin user is not installed"
fi