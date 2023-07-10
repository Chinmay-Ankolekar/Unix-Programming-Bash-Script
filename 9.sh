#! /bin/sh

if echo $1 | egrep -q '^[0-9]+$';
then
echo Valid code
else
echo Invalid code...Code must be numeric
exit
fi
if echo $2 | egrep -q '^[a-zA-Z]+$' ;
then
echo Valid designation
else
echo Invalid code...Designation must contain alphabets
exit
fi
echo $1 $2 >> desig.lst
echo Data added successfully
cat desig.lst

# Output:-
# $ ./9.sh 0101 desig
# Valid code
# Valid designation
# Data added successfully
# 0101 desig
