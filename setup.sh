#!/usr/bin/bash
#mv /etc/apt/sources.list /etc/apt/sources.list.back

#echo "deb https://mirrors.163.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
#echo "deb https://mirrors.163.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
#echo "deb https://mirrors.163.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
#echo "deb https://mirrors.163.com/ubuntu/ jammy-proposed main restricted universe multiverse" >> /etc/apt/sources.list
#echo "deb https://mirrors.163.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list

apt update
apt -y install fonts-noto-cjk-extra unzip openssh-server git xz-utils python3-pip konsole nano vim remmina
apt autoremove
# sshd config
mkdir -p /var/run/sshd
chmod -R 700 /var/run/sshd
chown -R root /var/run/sshd
sed -i 's/.*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
