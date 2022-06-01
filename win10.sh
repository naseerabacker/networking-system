#10. Shell script to display the content of a directory file in windows style
if [ $# -ne 0 ]
then
	 echo "Syntax error"
	 echo "< $0 >"
	exit
fi
ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
	
 	cd=`expr $cd + 1`
 	if [ $cd -eq 1 ]
 	then
		echo $line
 		continue
 	fi
	
	i=`echo $line | cut -d " " -f 9-`
	t=`date +%d/%m/%Y"  "%r -r "$i"`
	b=`echo $line | cut -d " " -f 5`
	if [ -d "$i" ]
	then
		echo  "$t\t<DIR>\t  $b\t   $i"	   
	else
	
		echo  "$t\t     \t  $b\t   $i"	
	fi
done

<<com
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh win10.sh
total 56
01/06/2022  11:33:23 AM IST	     	  24	   abnm
01/06/2022  11:38:06 AM IST	     	  26	   catt
28/05/2022  11:42:16 AM IST	     	  629	   comp.sh
25/05/2022  03:44:34 PM IST	     	  669	   ele.sh
01/06/2022  11:32:28 AM IST	     	  560	   line8.sh
01/06/2022  11:38:41 AM IST	     	  491	   linux9.sh
28/05/2022  01:11:30 PM IST	     	  431	   lleap.sh
01/06/2022  11:39:45 AM IST	     	  0	   lsl
19/05/2022  12:10:02 PM IST	     	  543	   prime.sh
19/05/2022  12:44:56 PM IST	     	  605	   readd.sh
26/05/2022  11:56:36 AM IST	     	  1115	   rename.sh
26/05/2022  11:45:42 AM IST	     	  546	   thi.sh
16/05/2022  03:40:41 PM IST	     	  385	   tim.sh
16/05/2022  03:40:08 PM IST	     	  505	   tri.sh
01/06/2022  11:39:42 AM IST	     	  519	   win10.sh
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ 

com

	
exec < $ter	 
rm lsl
