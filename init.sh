echo "PermitRootLogin yes" | tee -a /etc/ssh/sshd_config
/usr/sbin/sshd -D