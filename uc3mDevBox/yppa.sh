echo "Installing y-ppa-manager"
echo 'deb http://ppa.launchpad.net/webupd8team/y-ppa-manager/ubuntu trusty main' >> /etc/apt/sources.list
echo 'deb-src http://ppa.launchpad.net/webupd8team/y-ppa-manager/ubuntu trusty main' >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
apt-get update
apt-get -y install y-ppa-manager