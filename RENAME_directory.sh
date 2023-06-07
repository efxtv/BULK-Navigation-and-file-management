#!/bin/bash
#NOTE:must not run this in the home directory or root directories with sudo. Use it for renaming files in the present working directory only
#Bulk rename in bash
a=1

echo -en 'ENTER BASE NAME: '
read bae
for i in *; do
  new=$(printf "$bae%04d" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

#Command you can use
#./run.sh

#example
#./directory.sh
#enter the base name
#done
