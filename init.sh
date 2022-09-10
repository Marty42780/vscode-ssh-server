mkdir /root/.ssh
touch /root/.ssh/authorized_keys
echo ${YourPubKey} > /root/.ssh/authorized_keys
echo "PermitRootLogin yes" | tee -a /etc/ssh/sshd_config
/usr/sbin/sshd -D