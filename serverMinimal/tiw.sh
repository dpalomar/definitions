echo "****Creando al usuario TIW"
adduser --disabled-login --gecos "Tecnologias de Internet para la Web" tiw
echo 'tiw:tiw' | sudo chpasswd
usermod -a -G admin tiw