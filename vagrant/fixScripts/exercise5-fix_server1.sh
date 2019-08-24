#!/bin/bash
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N "" &> /dev/null' 
echo -e "\n" | ssh-keygen -N "" &> /dev/null
sudo apt-get install sshpass
echo 'StrictHostKeyChecking no' | sudo tee -a /etc/ssh/ssh_config