echo "****Instalando eclipse"
wget -O /opt/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz http://ftp.fau.de/eclipse/technology/epp/downloads/release/mars/1/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz
cd /opt/ && sudo tar -zxvf eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz
cd /opt && sudo rm -f eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz
cd /home/tiw
echo "****Creando acceso directo a eclipse"
# create shortcuts
mkdir -p /home/tiw/Desktop
ln -s /opt/eclipse/eclipse /home/tiw/Desktop/eclipse
chown -R tiw:tiw /home/tiw
