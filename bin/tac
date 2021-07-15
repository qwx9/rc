#!/bin/awk -f
{
	l[NR] = $0
}
END{
	while(NR > 0)
		print l[NR--]
}
