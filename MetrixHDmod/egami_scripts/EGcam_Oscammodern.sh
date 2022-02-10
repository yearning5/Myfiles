#!/bin/sh
CAMNAME="Oscam Modern"
case "$1" in
start)
	/usr/bin/cam/oscam-smod -b -r 2 -c /etc/tuxbox/oscammodern
	;;
stop)
	killall -9 oscam-smod 2>/dev/null
	sleep 2
	rm -rf /tmp/.oscam
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
