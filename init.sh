useradd -rm -d /home/${USER_NAME} -s /bin/bash -g root -G sudo -u 1000 ${USER_NAME} 
mkdir /home/${USER_NAME}/.ssh
touch /home/${USER_NAME}/.ssh/authorized_keys
echo ${YourPubKey} > /home/${USER_NAME}/.ssh/authorized_keys
/usr/sbin/sshd -D