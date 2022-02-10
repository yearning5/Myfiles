#!/bin/sh

CAMNAME="oscam_emu"

remove_tmp () {
	rm -rf /tmp/*.info* /tmp/*.tmp*
}

case "$1" in
	start)
	echo "[SCRIPT] $1: $CAMNAME"
	remove_tmp
	/usr/bin/cam/oscam_emu -S -c /etc/tuxbox/oscam-emu &
	sleep 2
	;;
	stop)
	echo "[SCRIPT] $1: $CAMNAME"
	killall -9  oscam_emu 2>/dev/null
	sleep 1
	remove_tmp
	;;
	*)
	$0 stop
	exit 0
	;;
esac

exit 0








