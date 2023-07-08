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
