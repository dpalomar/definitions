export JAVA_VERSION='8'
export JAVA_HOME='/usr/lib/jvm/java-8-oracle'
echo "****Instalando Java"
# install Java 8
echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
apt-get update
echo oracle-java-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install -y --force-yes oracle-java${JAVA_VERSION}-installer
update-java-alternatives -s java-8-oracle
