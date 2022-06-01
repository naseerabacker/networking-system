# Shell script to copy a set of files given as pairs at command prompt

if [ `expr $# % 2` -ne 0 -o $# -eq 0 ]
then
	echo "syntax error"
	echo "<$0> <source file> <destination file> etc..."
	echo "Arguments must be even number"
	exit 1
fi

i=`expr $# / 2`

while [ $i -gt 0 ]
do

cp $1 $2


shift
shift
i=`expr $i - 1`
done
exit 0

<<com

ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh twel.sh abnm catt
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ 

*data's in file catt will be removed and data's in abnm will be copied
com
