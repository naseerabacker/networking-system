
case $1 in
[aieou]* ) echo "word begin with lowercase vowel" ;;
[AIEOU]* ) echo "word begin with uppercase vowel" ;;
*[0-9] )echo "end with digit" ;;
esac
