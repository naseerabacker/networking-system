# 15. Shell script to perform a menu driven program to display

if [ $# -ne 0 ]
then
	echo "Syntax error"
	echo "$0"
	exit
fi


while :
do
echo "\n1.Audinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Readable files"
echo "5.Writable files"
echo "6.Executable files"
echo "-----------------------"
echo "\nselect your option:"
read opt

case $opt in

1) echo "Audinary files\n"
for file in *
do
	if [ -f $file ]
	then
		echo "$file"
	fi
done
;;
2) echo "directory files\n"
for file in *
do
        if [ -d $file ]
        then
                echo "$file"
        fi
done
;;
3) echo "Special files\n"
for file in *
do
        if [ -s $file ]
        then
                echo "$file"
        fi
done
;;
4) echo "Readable files\n"
for file in *
do
        if [ -r $file ]
        then
                echo "$file"
        fi
done
;;
5) echo "writable files\n"
for file in *
do
        if [ -w $file ]
        then
                echo "$file"
        fi
done
;;
6) echo "Executable files\n"
for file in *
do
        if [ -x $file ]
        then
                echo "$file"
        fi
done
;;
*)exit
;;
esac
done



<<com

ksb@ksb-ThinkCentre-Edge72:~/Desktop/pen$ sh 15pg.sh 

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
1
Audinary files

15pg.sh
House.class
House.java
MyWindowAdapter.class
Shapes$1.class
Shapes.class
Shapes.java
abnm
catt
fact.sh
pg14.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
2
directory files


1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
3
Special files

15pg.sh
House.class
House.java
MyWindowAdapter.class
Shapes$1.class
Shapes.class
Shapes.java
abnm
catt
fact.sh
pg14.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
4
Readable files

15pg.sh
House.class
House.java
MyWindowAdapter.class
Shapes$1.class
Shapes.class
Shapes.java
abnm
catt
fact.sh
pg14.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
5
writable files

15pg.sh
House.class
House.java
MyWindowAdapter.class
Shapes$1.class
Shapes.class
Shapes.java
abnm
catt
fact.sh
pg14.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
6
Executable files


1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:

com

