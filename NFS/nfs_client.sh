sudo apt-get update
sudo apt-get install nfs-common
sudo mkdir -p /home/$USER/nfs
sudo mount 10.42.0.223:/home/anurag/nfs /home/$USER/nfs
