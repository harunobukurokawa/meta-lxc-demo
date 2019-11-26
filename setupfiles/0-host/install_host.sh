# fstabをコピー

cp fstab /mnt/sd/etc/fstab

# config.ivi, cluster, walthamをコピー
cp config.* /mnt/sd/home/0



# weston.serviceをコピー
cp weston.service /mnt/sd/lib/systemd/system/weston.service

cp weston.ini /mnt/sd/etc/xdg/weston/weston.ini

# lxc セットアップスクリプトのコピー
cp setup.sh /mnt/sd/home/0/setup.sh

# lxc 起動スクリプトのコピー
cp run_container.sh /mnt/sd/home/0/run_container.sh

cp start-ivi.sh /mnt/sd/home/0/

# lxcディレクトリを作成
sudo mkdir /mnt/sd/lxc/guest -p
sudo mkdir /mnt/sd/lxc/cluster -p
sudo mkdir /mnt/sd/lxc/waltham -p


rm  /mnt/sd/lib/systemd/system/cluster-demo-network-conf.service

# 
