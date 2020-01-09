#!/bin/rc
rfork n

bind -b . /sys/games/lib/wl3d
cd $home/lib/wl3d
if(~ $1 -R){
	r=(-dx $2 -dy $3)
	shift 2
}
if not if(~ $#vgasize 0)
	r=(-dx 328 -dy 208)
if not
	r=`{echo $vgasize |\
		awk -Fx '{
			a=$1/320;
			b=$2/200;
			c=int(b<a?b:a);
			if(c*320 == $1 || c*200 == $2)
				c--;
			print "-dx", c*320+8, "-dy", c*200+8
		}'
	}

echo resize $r >/dev/wctl
wl3d $*
