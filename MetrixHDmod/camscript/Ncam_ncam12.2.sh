#!/bin/sh

CAMNAME="ncam12.2"

remove_tmp () {
	rm -rf /tmp/*.info* /tmp/*.tmp*
}

case "$1" in
	start)
	echo "[SCRIPT] $1: $CAMNAME"
	remove_tmp
	/usr/bin/cam/ncam12.2 -S -c /etc/tuxbox/config &
	sleep 2
	;;
	stop)
	echo "[SCRIPT] $1: $CAMNAME"
	killall -9  ncam12.2 2>/dev/null
	sleep 1
	remove_tmp
	;;
	*)
	$0 stop
	exit 0
	;;
esac

exit 0








