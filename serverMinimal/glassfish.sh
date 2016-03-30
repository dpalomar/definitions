wget -O /opt/glassfish-4.0-ml.zip http://download.java.net/glassfish/4.0/release/glassfish-4.0-ml.zip
cd /opt && sudo unzip glassfish-4.0-ml.zip
cd /opt/ && sudo rm -f glassfish-4.0-ml.zip
echo "export PATH=/opt/glassfish4/bin:$PATH" | sudo tee -a /home/tiw/.profile
echo "AS_ADMIN_PASSWORD=" > /tmp/password.txt
echo "AS_ADMIN_NEWPASSWORD=admin" >> /tmp/password.txt
sudo /opt/glassfish4/bin/asadmin --user admin --passwordfile /tmp/password.txt change-admin-password --domain_name domain1
echo "AS_ADMIN_PASSWORD=admin" > /tmp/password.txt
cd /opt
glassfish4/bin/asadmin start-domain && glassfish4/bin/asadmin --passwordfile /tmp/password.txt --host localhost --port 4848 enable-secure-admin && glassfish4/bin/asadmin stop-domain
rm /tmp/password.txt
echo "****installing mysql-connector-java"
wget -O /opt/mysql-connector-java-5.1.38.tar.gz http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.38.tar.gz
cd /opt && sudo tar -xvf mysql-connector-java-5.1.38.tar.gz
cd /opt && sudo rm -f mysql-connector-java-5.1.38.tar.gz
cd /opt && sudo cp mysql-connector-java-5.1.38/mysql-connector-java-5.1.38-bin.jar glassfish4/glassfish/domains/domain1/lib/
cd /opt && sudo rm -rf mysql-connector-java-5.1.38
chown -R tiw:tiw /opt

