useradd -rm -d /home/${USER_NAME} -s /bin/bash -g root -G sudo -u 1000 ${USER_NAME} 
echo ${USER_NAME}:${USER_PASSWORD} | chpasswd 
/usr/sbin/sshd -D