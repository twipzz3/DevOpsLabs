#!/bin/bash
sudo useradd adminuser
echo adminuser | passwd adminuser --stdin
sudo usermod -aG wheel adminuser

sudo useradd poweruser
echo poweruser | passwd poweruser --stdin     
sudo usermod -aG root poweruser

setfacl -m g:poweruser:rx /home/adminuser
find / -perm /4000