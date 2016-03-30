echo "****Instalando Mysql con password admin"
# install MySQL with default passwoard as 'admin'
export DEBIAN_FRONTEND=noninteractive
echo 'mysql-server mysql-server/root_password password admin' | sudo debconf-set-selections
echo 'mysql-server mysql-server/root_password_again password admin' | sudo debconf-set-selections
apt-get install -y mysql-server mysql-workbench
