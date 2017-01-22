#!/bin/bash
if [ -e "$1" ]
then
  echo "Posiadasz już plik o nazwie $1"
else
  echo "Nie posiadasz pliku o nazwie $1"
fi
