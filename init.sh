useradd -rm -d /home/${YourName} -s /bin/bash -g root -G sudo -u 1000 ${YourName} 
mkdir /home/${YourName}/.ssh
touch /home/${YourName}/.ssh/authorized_keys
echo ${YourPubKey} > /home/${YourName}/.ssh/authorized_keys
chown -R Martin /home/Martin
/usr/sbin/sshd -D