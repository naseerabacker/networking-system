if [ $# -ne 0 ]
then
 echo "syntax is <$0> "
 exit 1
fi
#factorial function
fact()
{
n=$1
i=1
f=1
while [ $i -le $n ]
do 
 f=`expr $f \* $i`
i=`expr $i + 1`
done
return $f
}
#calling function
echo "enter number"
read no
fact $no
echo "$no !=$?"
<<com

ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh fact.sh
enter number
4
4 !=24
ksb@ksb-ThinkCentre-Edge72:~/Desktop/net script$ sh fact.sh
enter number
0 
0 !=1
com
