#!/bin/sh
CAMNAME="Gcam_emu"
case "$1" in
start)
	/usr/bin/cam/gcam.arm -c /etc/tuxbox/config &
	;;
stop)
	killall -9 gcam.arm 2>/dev/null
	sleep 2
	rm -rf /tmp/.gcam
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
