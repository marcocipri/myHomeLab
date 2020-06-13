## creation of the machine
docker-machine create --driver virtualbox $1
## put my aut key for ssh auth
docker-machine scp   authorized_keys $1:/var/lib/boot2docker
## put script for startup
docker-machine scp   bootlocal.sh  $1:/var/lib/boot2docker
docker-machine stop $1
## when the machine is down add the bridge interface
VBoxManage modifyvm  $1  --bridgeadapter3 "eno1"
VBoxManage modifyvm  $1  --nic3 bridged
## then start
docker-machine start $1
## install python needed for python
docker-machine ssh tce-load -wi python
docker-machine ssh curl https://bootstrap.pypa.io/get-pip.py | sudo python -
docker-machine ssh $1  ip a show eth2