i=1
while [ $i -le 10 ]
do
 echo $i
 i=`expr $i + 1`
done
$ sh wh.sh
/*
1
2
3
4
5
6
7
8
9
10

*/
a=0

while [ $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done
/*
0
1
2
3
4
5
6
7
8
9
*/


 

