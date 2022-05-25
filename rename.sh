#Shell script to rename all ordinary files in a directory with filename.PID of shell#


if [ $# -ne 0 ]
then
	echo "Syntax is <$0>"
   	exit 1
fi
for i in *
do
 	if [ -f $i ]
  	then
   		newname="$i.$$"
   		mv $i $newname
  	fi
done


<<com
ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ ls -l
total 24
-rw-rw-r-- 1 ksb ksb  558 Feb 20  2020  123
-rw-rw-r-- 1 ksb ksb 1997 May 10 14:22  ari.java
-rw-rw-r-- 1 ksb ksb    5 Apr 11 15:02  a.sh
drwxrwxr-x 2 ksb ksb 4096 May  4 12:31  pp
-rw-rw-r-- 1 ksb ksb  151 May 19 12:46  rename.sh
-rw-rw-r-- 1 ksb ksb  205 May 16 15:24 'Untitled Document 1'
ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ sh rename.sh
rename.sh: 8: [: Untitled: unexpected operator
ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ ls -l
total 24
-rw-rw-r-- 1 ksb ksb  558 Feb 20  2020  123.6885
-rw-rw-r-- 1 ksb ksb 1997 May 10 14:22  ari.java.6885
-rw-rw-r-- 1 ksb ksb    5 Apr 11 15:02  a.sh.6885
drwxrwxr-x 2 ksb ksb 4096 May  4 12:31  pp
-rw-rw-r-- 1 ksb ksb  151 May 19 12:46  rename.sh.6885
-rw-rw-r-- 1 ksb ksb  205 May 16 15:24 'Untitled Document 1'
ksb@ksb-ThinkCentre-Edge72:~/Desktop/reer$ 

com
