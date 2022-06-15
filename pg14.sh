# 14. Shell script to modify cp command considering all error possibilities

if [ $# -ne 2 ]
then 
	echo "syntax error <$0> <sorce file> <destination file>"
	exit 1
fi
if [ ! -f $1 ]
then
	echo " $1 not exists or it is not an ordinary file"
	exit 2
fi
if [ ! -r $1 ]
then
	echo " $1 is not readable"
	exit 5
fi

if [ -f $2 ]
then 
	echo "target file exists.Do you want to Overwrite(y/n)"
	read ans
	if [ $ans = "no" ]
	then 
		exit 3
	fi
	if [ ! -w $2 ]
	then
		echo "$2 not writable"
		exit 4

	fi
fi
cp $1 $2
echo "file successfully copied"

exit 0	



<<com
ksb@ksb-ThinkCentre-Edge72:~/Desktop/pen$ sh pg14.sh abnm catt
target file exists.Do you want to Overwrite(y/n)
n
ksb@ksb-ThinkCentre-Edge72:~/Desktop/pen$ sh pg14.sh abnm catt
target file exists.Do you want to Overwrite(y/n)
t
file successfully copied

com
