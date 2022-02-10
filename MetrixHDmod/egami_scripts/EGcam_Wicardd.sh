#!/bin/sh
CAMNAME="Wiccard_emu"
case "$1" in
start)
	/usr/bin/cam/wicardd19 -d -c  /etc/tuxbox/config/wicardd.conf
	;;
stop)
	killall -9 wicardd19 2>/dev/null
	sleep 2
	rm -rf /tmp/.wicardd
	;;
restart|reload)
	$0 stop
	sleep 1
	$0 start
	;;
version)
	echo "1.2_8110"
	;;
info)
	echo "doscam"
	;;
*)
	echo "Usage: $0 start|stop|restart"
	exit 1
	;;
esac
exit 0
