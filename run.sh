#!/bin/bash
#Bulk rename in bash
a=1
echo -en 'ENTER BASE NAME: '
read bae
for i in *.rar; do
  new=$(printf "$bae%04d.rar" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done
