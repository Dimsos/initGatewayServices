
#echo new cron into cron file
echo '@reboot /home/pi/gateway-Service/init-python.sh > /tmp/HUMTEMP_LEDS_SWITCH.log 2>&1' >> mycron_service
crontab mycron_service
echo '@reboot sudo /home/pi/gatewayServiceConfig/init-python.sh > /tmp/port_7777.log 2>&1' >> mycron_port
crontab mycron_port
