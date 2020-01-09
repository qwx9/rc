#!/bin/rc
echo resize `{echo $vgasize |\
	awk -Fx '{
		a=$1/320;
		b=$2/224;
		c=int(b<a?b:a);
		if(c*320 == $1 || c*224 == $2)
			c--;
		print "-dx", c*320+8, "-dy", c*224+8
	}'
} >/dev/wctl
if(~ $1 -j)
	nusb/joy /dev/usb/ep^$2^.0 | joygba | {games/md -a $*(3-) || games/md $*(3-)}
if not
	games/md -a $* || games/md $*
