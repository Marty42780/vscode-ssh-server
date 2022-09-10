useradd -rm -s /bin/bash -g root -G sudo -u 1000 root
mkdir /home/root/.ssh
touch /home/root/.ssh/authorized_keys
echo ${YourPubKey} > /home/root/.ssh/authorized_keys
/usr/sbin/sshd -D