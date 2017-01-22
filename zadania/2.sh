#!/bin/bash
if [ -e "$1" ]
then
  echo "Posiadasz już plik o nazwie $1"
else
  echo "To jest nowy plik.">$1
fi
