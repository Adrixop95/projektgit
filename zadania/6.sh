#!/bin/bash
if [ $# -lt 2 ]
then
echo "Podałeś za mało paramerów"
else
  case "$1" in
    "joined") echo ${*#"joined"} | tr -d ' ';;
    "underline") echo ${*#"underline"} | tr ' ' '_';;
    "uppercase") echo ${*#"uppercase"} | tr 'a-z' 'A-Z';;
    "dashes") echo ${*#"dashes"} | tr ' ' '-';;
    *) echo "Nie podano opcji"
  esac
fi
