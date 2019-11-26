WORK=`pwd`
echo " $WORK"

### host
mount /dev/sdc1 /mnt/sd
cd /mnt/sd
ls -al
time rm -rf bin boot dev lib media mnt proc run sbin sys tmp usr var etc

cd $WORK
cd binary/0-host
echo " start flashing HOST in $PWD"

AGL_FILE=`ls -1  ./agl-demo-platform-*.tar.bz2 | tail -1`

echo " [ $AGL_FILE ] "
time sudo tar --extract  --numeric-owner --preserve-permissions --preserve-order --totals --xattrs-include=* --file=${AGL_FILE} -C /mnt/sd/
cd $WORK
cd 0-host/
./install_host.sh

sync

umount /mnt/sd

sleep 2


### IVI
mount /dev/sdc2 /mnt/sd
cd /mnt/sd
ls -al
time rm -rf bin boot dev lib media mnt proc run sbin sys tmp usr var etc
ls -al

cd $WORK
cd binary/1-ivi

echo " start flashing IVI in $PWD"

AGL_FILE=`ls -1  ./agl-demo-platform-*.tar.bz2 | tail -1`
echo " [ $AGL_FILE ] "
time sudo tar --extract  --numeric-owner --preserve-permissions --preserve-order --totals --xattrs-include=* --file=${AGL_FILE} -C /mnt/sd/
cd $WORK

cd 1-ivi/
./install_ivi.sh
sync

umount /mnt/sd

echo " Finish IVI"

sleep 2



### cluster
mount /dev/sdc3 /mnt/sd
cd /mnt/sd
ls -al
time rm -rf bin boot dev lib media mnt proc run sbin sys tmp usr var etc
ls -al

cd $WORK
cd binary/2-cluster/

echo " start flashing cluster in $PWD"

AGL_FILE=`ls -1  ./agl-cluster-demo-platform-*.tar.bz2 | tail -1`
echo " [ $AGL_FILE ] "
time sudo tar --extract  --numeric-owner --preserve-permissions --preserve-order --totals --xattrs-include=* --file=${AGL_FILE} -C /mnt/sd/
cd $WORK

cd 2-cluster/
./install_cluster.sh
sync

umount /mnt/sd

echo " Finish cluster"

