# Shell script to count the occurrence of words in a file in a set of files

if [ $# -eq 0 ]
then
    echo "Syntax error"
    echo "$0 file1 file2 etc..."
    exit
    fi

k=$#
j=0
echo "enter a word"
read word


ter=`tty`
while [ $k -gt 0 ]
do
fname=$1

exec < $fname
i=0
while read line
do
    for l in $line
    do
        echo $l | grep $word > grp
        if [ $? -eq 0 ]
        then
            i=`expr $i + 1`
        fi
    done
done

j=`expr $j + $i`
echo "occurrences of word $word in $fname is $i"
shift
k=`expr $k - 1`
exec < $ter
done

echo "total occurrences word $word is $j"
rm grp

<<com
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh count.sh lleap.sh prime.sh
enter a word
echo
occurrences of word echo in lleap.sh is 3
occurrences of word echo in prime.sh is 3
total occurrences word echo is 6

com



