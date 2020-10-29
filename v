#!/bin/rc
rfork n
sshnet tcp!$1!17060 && vncv -l 8859-1 -e hextile $*
