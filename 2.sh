#!/bin/sh

cd $1
ls>list1.lst
cd ..
cd $2
ls>list2.lst
cd ..

cd $1
for word in `cat list1.lst`
do
cd ..
cd $2
grep "$word" "list2.lst"
if [ $? -eq 0 ]
then
rm $word
fi
cd ..
cd $1
done

# Output: -
# ./2.sh bar1 bar2
# f1.txt
