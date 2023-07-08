#!/bin/sh

echo 1.who 2.whoami 3.date 4.ls -l 5.exit
while [ true ]
do
echo Enter the choice
read choice
case $choice in
 1)who;;
 2)whoami;;
 3)date;;
 4)ls -l;;
 5)exit;;
 *)echo Invalid entry
esac
done
