#! /bin/sh

echo "enter the directory path"
read path
echo "enter to pattern to be searched"
read pat
cd $path
ls > just.txt
for word in `cat just.txt`
do
grep "$pat" $word
done

# Output:-
# enter the directory path
# /home/linux/unix
# enter to pattern to be searched
# sh
# #! /bin/sh
# #! /bin/sh
# #! /bin/sh
# #!/bin/sh
# #!/bin/sh
# #!/bin/sh
# #! /bin/sh
# #!/bin/sh
# #! /bin/sh
# #! /bin/sh
# 1.sh
# 10.sh
# 11.sh
# 2.sh
# 3.sh
# 4.sh
# 5.sh
# 6.sh
# 7.sh
# 8.sh
# 9.sh
# bash_reference_file
