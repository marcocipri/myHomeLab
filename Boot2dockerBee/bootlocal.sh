sudo adduser bingousr
echo "bingousr:bingousr" | sudo chpasswd
mkdir -p /home/bingousr/.ssh
cat /var/lib/boot2docker/authorized_keys >> /home/bingousr/.ssh/authorized_keys
cat /var/lib/boot2docker/authorized_keys >> /home/docker/.ssh/authorized_keys