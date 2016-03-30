echo "optimizando el sistema"
echo "vm.swappiness=10" >> /etc/sysctl.conf
echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf
apt-get install -y preload prelink
sed -i -e 's/PRELINKING=unknown/PRELINKING=yes/g' /etc/default/prelink
/etc/cron.daily/prelink