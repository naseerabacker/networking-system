
if [ $# -ne 3 ]
then
    echo "syntax error"
    echo "<*.sh filename lowerlimt upperlimit>"
    exit
fi

file=$1
l=$2
u=$3
echo "\n----------------------"
echo "lines between $l - $u is printed below\n"

cat $file | head -$u | tail -n +$l



exit
<<com

ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh ele.sh ele.sh 3 15

----------------------
lines between 3 - 15 is printed below

then
    echo "syntax error"
    echo "<*.sh filename lowerlimt upperlimit>"
    exit
fi

file=$1
l=$2
u=$3
echo "\n----------------------"
echo "lines between $l - $u is printed below\n"

cat $file | head -$u | tail -n +$l
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ 

com
