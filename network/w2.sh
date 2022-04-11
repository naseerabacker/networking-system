case $1 in
 [a-z] ) echo "lower case" ;;
 [A-Z] ) echo "upper case" ;;
 [0-9] ) echo "numeral" ;;
 ?)echo "special character" ;;
esac


/* ksb@ksb-ThinkCentre-Edge72:~/naseeras2/network$ sh w2.sh 2
numeral
ksb@ksb-ThinkCentre-Edge72:~/naseeras2/network$ sh w2.sh a
lower case
ksb@ksb-ThinkCentre-Edge72:~/naseeras2/network$ sh w2.sh A
upper case
ksb@ksb-ThinkCentre-Edge72:~/naseeras2/network$ sh w2.sh /
special character

*/

