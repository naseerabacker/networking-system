
#read 3 numbers and find largest




echo "enter three numbers"
read a b c

if [ $a -gt $b ]
then
max=$a
else
max=$b
fi
if [ $c -gt $max ]
then
max=$c
fi

echo "$max"

<<com
ksb@ksb-ThinkCentre-Edge72:~/Desktop/naseeras2/network/script$ sh max3.sh
enter three numbers
3 5 6
6
com













































