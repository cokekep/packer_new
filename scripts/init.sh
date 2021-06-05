#!/bin/bash -eux

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Add test user to sudoers
echo "%test ALL=(ALL:ALL) ALL" > /target/etc/sudoers.d/test ; \
  in-target chmod 0440 /etc/sudoers.d/test

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

apt update
apt upgrade -y