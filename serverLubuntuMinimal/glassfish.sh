wget -O /opt/glassfish-4.1.1.zip http://download.java.net/glassfish/4.1.1/release/glassfish-4.1.1.zip
cd /opt && sudo unzip glassfish-4.1.1.zip
cd /opt/ && sudo rm -f glassfish-4.1.1.zip
echo "export PATH=/opt/glassfish4/bin:$PATH" | sudo tee -a /home/tiw/.profile
echo "AS_ADMIN_PASSWORD=" > /tmp/password.txt
echo "AS_ADMIN_NEWPASSWORD=admin" >> /tmp/password.txt
sudo /opt/glassfish4/bin/asadmin --user admin --passwordfile /tmp/password.txt change-admin-password --domain_name domain1
echo "AS_ADMIN_PASSWORD=admin" > /tmp/password.txt
cd /opt
glassfish4/bin/asadmin start-domain && glassfish4/bin/asadmin --passwordfile /tmp/password.txt --host localhost --port 4848 enable-secure-admin && glassfish4/bin/asadmin stop-domain
rm /tmp/password.txt
chown -R tiw:tiw /opt

