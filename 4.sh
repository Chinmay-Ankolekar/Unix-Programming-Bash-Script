#!/bin/sh

grep "manager" emp.lst>temp
while read line
do
echo $line>temporary
v=$(cut -d ' ' -f 5 temporary)
if [ $v -gt 60000 ]
then
cut -d ' ' -f 1,2 temporary>emp1
cat emp1
fi
done<temp
