#!/bin/bash
for i in $1/*;
do
  if [ -d "$i" ]
  then
    echo -n "Ilosc elementow w folderze $i jest rowna "
    ls "$i"| wc -l
  fi
done
