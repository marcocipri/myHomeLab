## python needed for ansible support
tce-load -wi python
curl https://bootstrap.pypa.io/get-pip.py | sudo python -
## my working user
sudo adduser bingousr
echo "bingousr:bingousr" | sudo chpasswd
## add my key for authentication
mkdir -p /home/bingousr/.ssh
cat /var/lib/boot2docker/authorized_keys >> /home/bingousr/.ssh/authorized_keys
cat /var/lib/boot2docker/authorized_keys >> /home/docker/.ssh/authorized_keys