#!/bin/bash
sudo sed -i -e '1,/deny from all/{s/deny from all/allow from all/;}' /etc/apache2/sites-enabled/000-default
sudo service apache2 reload
