echo "enter  side A"
read A
echo "enter side B"
read B
echo "enter side C"
read C
d=$((A+B))
e=$((B+C))
f=$((C+A))
if [ $d -gt $C -a $e -gt $A -a $f -gt $B ]
then
    echo "valid traingle"
else
    echo "not a valid traingle"
fi
#ksb@ksb-ThinkCentre-Edge72:~$ sh tri.sh
#enter  side A
#3
#enter side B
#0
#enter side C
#9
#not a valid traingle
#ksb@ksb-ThinkCentre-Edge72:~$ 3
#3: command not found
#ksb@ksb-ThinkCentre-Edge72:~$ sh tri.sh
#enter  side A
#3
#enter side B
#4
#enter side C
#5
#valid traingle

