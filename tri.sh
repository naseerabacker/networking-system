# Shell script to read 3 numbers and test whether they can be sides of a triangle#

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

<<com
ksb@ksb-ThinkCentre-Edge72:~$ sh tri.sh
enter  side A
3
enter side B
0
enter side C
9
not a valid traingle

$ sh tri.sh
enter  side A
3
enter side B
4
enter side C
5
valid traingle
com
