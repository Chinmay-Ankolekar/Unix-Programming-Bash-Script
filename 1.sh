#! /bin/sh

if [ $# -ne 2 ]
then
 echo Argument count doesnot match
 exit
fi
if [ ! -f $1 ]
then
 echo $1 does not exist
 exit
fi
if [ ! -f $2 ]
then
 echo $2 does not exist
 exit
fi
echo "Comparision Between file1 and file2"
cmp $1 $2
if [ $? -eq 0 ]
then
 echo Compare command executed successfully
fi
echo Common between the files is
comm $1 $2
if [ $? -eq 0 ]
then
 echo Common command executed successfully
fi
echo Difference between files is
diff $1 $2
if [ $? -eq 0 ]
then
 echo Difference command executed successfully
fi
echo The five largest files among the current directory are
ls -l | sort -n -k 5 | tail -5