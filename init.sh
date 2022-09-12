apt-get update && xargs -a /root/apps-list.txt apt-get install -y openssh-server # Install openssh-server and all pkgs in /root/apps-list.txt
apt-get update && /root/init-custom-script.sh
mkdir /root/.ssh && touch /root/.ssh/authorized_keys
echo ${YourPubKey} > /root/.ssh/authorized_keys
echo "PermitRootLogin yes" | tee -a /etc/ssh/sshd_config
service ssh start
/usr/sbin/sshd -D