# initGatewayServices
Inicializa e instala las dependencias necesarias para los servicios 7777 y arduino nanoreset

#Para SOLO crear usuarios
Ejecutar:
- git clone https://github.com/danielei9/initGatewayServices
- cd initGatewayServices
- chmod +x justCreateUser.sh
- sudo ./justCreateUser.sh

#Para crear servicios y usuarios:
- git clone https://github.com/danielei9/initGatewayServices
- cd initGatewayServices
- chmod +x initGatewayServices.sh
- sudo ./initGatewayServices.sh
- crontab -e
- Pegar :
 @reboot sudo /home/pi/gatewayServiceConfig/init-python.sh > /tmp/port_7777.log 2>&1
 @reboot /home/pi/gateway-Service/init-python.sh > /tmp/HUMTEMP_LEDS_SWITCH.log 2>&1
- reboot -n
- probar curl localhost:7777

