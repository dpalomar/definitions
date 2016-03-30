export MAVEN_VERSION='3.3.9'
export MAVEN_HOME='/usr/share/maven'
export PATH=$PATH:$MAVEN_HOME/bin
echo "****Instalando Maven"
# install maven
curl -fsSL http://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | sudo tar xzf - -C /usr/share && sudo mv /usr/share/apache-maven-${MAVEN_VERSION} /usr/share/maven && sudo ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
