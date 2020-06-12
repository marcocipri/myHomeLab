docker-machine create --driver virtualbox $1
docker-machine scp   authorized_keys $1:/var/lib/boot2docker
docker-machine scp   bootlocal.sh  $1:/var/lib/boot2docker
docker-machine stop $1
VBoxManage modifyvm  $1  --bridgeadapter3 "eno1"
VBoxManage modifyvm  $1  --nic3 bridged
docker-machine start $1
docker-machine ssh $1  ip a show eth2