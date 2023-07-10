#! /bin/sh

echo set y as 1
read y
while [ $y -eq 1 ]
do
echo "enter the item:"
read item
echo "enter the itemcode:"
read itemcode
echo $item $itemcode >> item.txt
echo "enter 1 if you want to enter item or 0 if you 
dont want"
read y
done
cat item.txt

# Output:-
# set y as 1
# 1
# enter the item:
# Item1
# enter the itemcode:
# 01
# enter 1 if you want to enter item or 0 if you 
# dont want
# 1
# enter the item:
# Item2
# enter the itemcode:
# 02
# enter 1 if you want to enter item or 0 if you 
# dont want
# 0
# Item1 01
# Item2 02
