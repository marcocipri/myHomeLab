## my working user
sudo adduser bingousr
echo "bingousr:bingousr" | sudo chpasswd
## add my key for authentication
mkdir -p /home/bingousr/.ssh
cat /var/lib/boot2docker/authorized_keys >> /home/bingousr/.ssh/authorized_keys
cat /var/lib/boot2docker/authorized_keys >> /home/docker/.ssh/authorized_keys
cat /var/lib/boot2docker/sudoers-append >> /etc/sudoers
addgroup bingousr staff
mv /var/lib/boot2docker/install-python.sh /etc/profile.d/