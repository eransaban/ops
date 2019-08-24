#!/bin/bash
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N "" &> /dev/null' 
echo -e "\n" | ssh-keygen -N "" &> /dev/null
sudo apt-get install sshpass
echo 'StrictHostKeyChecking no' | sudo tee -a /etc/ssh/ssh_config
sudo -H -u vagrant bash -c 'sshpass -p 'vagrant' ssh-copy-id vagrant@192.168.100.10'
sudo -H -u vagrant bash -c 'sshpass -p 'vagrant' ssh-copy-id root@192.168.100.10'
sshpass -p 'vagrant' ssh-copy-id root@192.168.100.10
sshpass -p 'vagrant' ssh-copy-id vagrant@192.168.100.10
sudo -H -u vagrant ssh vagrant@192.168.100.10 sshpass -p 'vagrant' ssh-copy-id vagrant@192.168.100.11
sudo -H -u vagrant ssh vagrant@192.168.100.10 sshpass -p 'vagrant' ssh-copy-id root@192.168.100.11
sudo -H -u vagrant ssh root@192.168.100.10 sshpass -p 'vagrant' ssh-copy-id root@192.168.100.11
sudo -H -u vagrant ssh root@192.168.100.10 sshpass -p 'vagrant' ssh-copy-id vagrant@192.168.100.11
