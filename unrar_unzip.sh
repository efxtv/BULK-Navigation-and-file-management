#!/bin/bash
# bulk unrar unzip
# save as bziprar in /usr/bin
# use as rar_zip_unzip.sh rar
# rar_zip_unzip.sh zip
# a.zip b.zip c.zip will be unzipped into a b c folders respectively.
for i in *.$1; do
  newdir="${i:0:-4}" && mkdir "$newdir"
  unzip "$i" -d  "$newdir"
done
