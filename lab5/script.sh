#!/bin/bash
#task_A
sudo mkdir /home/folder1/
sudo mkdir /home/folder2/

sudo mkdir /usr/bin/daemon
sudo mv /vagrant/daemon.sh /usr/bin/daemon
sudo chmod +x /usr/bin/daemon/daemon.sh

sudo mv /vagrant/daemon.service /etc/systemd/system/

sudo systemctl start daemon.service
sudo systemctl enable daemon.service

#task_B
crontab /vagrant/crontab