#!/bin/sh
CAMNAME="Ncam_emu"
case "$1" in
start)
	/usr/bin/cam/ncam -c /etc/tuxbox/config &
	;;
stop)
	killall -9 ncam 2>/dev/null
	sleep 2
	rm -rf /tmp/.ncam
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
