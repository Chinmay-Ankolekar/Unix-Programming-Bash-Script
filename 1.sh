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

# Output :-
# Comparision Between file1 and file2
# fruit.txt fruit1.txt differ: byte 16, line 3
# Common between the files is
#                 Apple
#                 Banana
# Cherries
#                 Dragon Fruit
#                 Elderberry
#         Grapes
#                 Guava
# Common command executed successfully
# Difference between files is
# 3d2
# < Cherries
# 5a5
# > Grapes
# The five largest files among the current directory are
# -rwxr-xr-x 1 hp 197121 241 Jul  8 19:27 5.sh
# -rwxr-xr-x 1 hp 197121 253 Jul  8 19:06 8.sh
# -rwxr-xr-x 1 hp 197121 322 Jul  8 22:17 9.sh
# -rwxr-xr-x 1 hp 197121 620 Jul  8 19:06 1.sh
# -rwxr-xr-x 1 hp 197121 885 Jul  8 23:54 11.sh
