apt-get update && apt-get install -y openssh-server # Install openssh-server
mkdir /root/.ssh && touch /root/.ssh/authorized_keys
echo ${YourPubKey} > /root/.ssh/authorized_keys
echo "PermitRootLogin yes" | tee -a /etc/ssh/sshd_config
service ssh start
/usr/sbin/sshd -D
