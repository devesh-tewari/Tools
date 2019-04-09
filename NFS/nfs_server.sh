echo "1qaz2wsx" | sudo -S apt-get install nfs-kernel-server
echo "1"
echo $?

echo "1qaz2wsx" | sudo -S smkdir -p /home/$USER/nfs
echo "2"
echo $?

echo "1qaz2wsx" | sudo -S chown nobody:nogroup /home/$USER/nfs
echo "3"
echo $?

echo "1qaz2wsx" | sudo -S chmod 777 /home/$USER/nfs
echo "4"
echo $?

#echo "1qaz2wsx" | sudo -S echo "/home/anurag/Desktop/sharedfolder3 10.42.0.163(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports
#echo "1qaz2wsx" | sudo echo "anurag" >> /etc/exports
echo "1qaz2wsx" | sudo exportfs -o rw 10.42.0.163:/home/$USER/nfs
echo "1qaz2wsx" | sudo exportfs -o rw 10.42.0.222:/home/$USER/nfs
echo "1qaz2wsx" | sudo exportfs -o rw 10.42.0.199:/home/$USER/nfs

echo "5"
echo $?

echo "1qaz2wsx" | sudo -S exportfs -a
echo "6"
echo $?
#echo "1qaz2wsx" | sudo -S systemctl restart nfs-kernel-server
#echo "7"
#echo $?
echo "1qaz2wsx" | sudo -S ufw allow from 10.42.0.163 to any port nfs
echo "1qaz2wsx" | sudo -S ufw allow from 10.42.0.222 to any port nfs
echo "1qaz2wsx" | sudo -S ufw allow from 10.42.0.199 to any port nfs
echo "8"
echo $?
