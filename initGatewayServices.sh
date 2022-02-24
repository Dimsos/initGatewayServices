#!/bin/bash

#update
sudo apt-get upgrade 
sudo apt-get update

#install pip
sudo apt install python3-pip -y 
pip3 --version

#install dependencies
pip3 install pyserial
pip3 install paho-mqtt python-etcd
pip3 install psutil
sudo pip3 install pyserial
sudo pip3 install paho-mqtt python-etcd
sudo pip3 install psutil
sudo pip3 install Flask 
sudo pip3 install Flask 

#clone from github
git clone https://github.com/danielei9/gatewayServiceConfig
git clone https://github.com/danielei9/gateway-Service

#echo new cron into cron file
echo '@reboot /home/pi/gateway-Service/init-python.sh > /tmp/HUMTEMP_LEDS_SWITCH.log 2>&1' >> mycron_service
crontab mycron_service
echo '@reboot sudo /home/pi/gatewayServiceConfig/init-python.sh > /tmp/port_7777.log 2>&1' >> mycron_port
crontab mycron_port

chmod +x /home/pi/gateway-Service/init-python.sh
chmod +x /home/pi/gatewayServiceConfig/init-python.sh 
chmod +x /home/pi/gatewayServiceConfig/init-server.py

#para hacer pruebas eliminar con esto el user
#sudo deluser --remove-home BUCHU 

echo 'Introduzca un nombre de usuario:'
#leer el dato 
read user

#crear user
sudo useradd $user

sudo passwd $user
#poner contraseña

sudo mkdir /home/$user
sudo chown $user:$user -R /home/$user
sudo chmod 755 -R /home/$user
sudo usermod -d /home/$user $user
sudo chmod o-rwx -R /home/pi
