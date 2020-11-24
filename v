#!/bin/rc
rfork n
if(~ $#* 0){
	echo usage: $0 sys [vncvopts..]
	exit usage
}
switch($1){
case aib
case t30
	sshnet tcp!$1!x || exit
	*=u30
case *
	sshnet tcp!$1!x || exit
}
vncv -l 8859-1 -e hextile $*
