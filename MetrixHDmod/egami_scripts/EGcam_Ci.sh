#!/bin/sh

CAMNAME="Common_Interface"

remove_tmp () {
	rm -rf /tmp/*.info /tmp/*.tmp
}

case "$1" in
	start)
	echo "[SCRIPT] $1: $CAMNAME"
	remove_tmp
	;;
	stop)
	echo "[SCRIPT] $1: $CAMNAME"
	remove_tmp
	;;
	*)
	$0 stop
	exit 0
	;;
esac

exit 0








