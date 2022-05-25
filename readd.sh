#6.Shell script to count the number of words and lines in a file#


if [ $# -ne 1 ]
then 
	echo "syntax error"
	echo "< $0 filename >"
	exit
fi

fname=$1
ter=`tty`
exec < $fname
i=0
j=0
while read line
do
	i=`expr $i + 1`

for c in $line 
do
	j=`expr $j + 1`

done

done
echo "$fname has"
echo "no of lines->$i"
echo "no of words->$j"
exec < $ter

<<com

ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ sh readd.sh
syntax error
< readd.sh filename >
ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ sh readd.sh rem.sh
rem.sh has
no of lines->47
no of words->102
ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ 
com

com

