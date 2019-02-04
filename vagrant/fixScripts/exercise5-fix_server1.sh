#!/bin/bash
#add fix to exercise5-server1 here

su vagrant -c "ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N \"\""
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/

echo "Host server2
    User vagrant
    HostName server2
    IdentityFile /home/vagrant/.ssh/id_rsa
    StrictHostKeyChecking no" > /home/vagrant/.ssh/config

