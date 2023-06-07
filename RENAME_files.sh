#!/bin/bash
#Bulk rename in bash

a=1
echo -en 'ENTER BASE NAME: '
read bae
for i in *.$1; do
  new=$(printf "$bae%04d.$1" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

#Command you can use
#./run.sh ext

#example
#./run.sh mp3
#enter the base name
#done
