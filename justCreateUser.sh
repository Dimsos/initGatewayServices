#!/bin/bash
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
