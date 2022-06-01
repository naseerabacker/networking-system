# Shell script to display a file from last line to first line

if [ $# -ne 1 ]
then
	echo "syntax error"
	echo " <$0> <filename>"
	exit
fi

file=$1
ter=`tty`
exec < $file
c=0
while read line
do
c=`expr $c + 1`
done
exec < $ter

while [ 0 -le $c ]
do
cat $file | head -$c | tail -n +$c
c=`expr $c - 1`
done 


<<com
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh line8.sh abnm
animal
umbrella
sat
cat
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh line8.sh 
syntax error
 <line8.sh> <filename>

ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ 

com
