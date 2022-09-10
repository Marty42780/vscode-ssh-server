mkdir /root/.ssh
touch /root/.ssh/authorized_keys
echo ${YourPubKey} > /root/.ssh/authorized_keys
/usr/sbin/sshd -D