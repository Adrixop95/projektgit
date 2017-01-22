#!/bin/bash
if [ $# -lt 1 ]
then
echo "Podałeś za mało paramerów"
else
  case "$1" in
    "early") echo "Owww it's early";;
    "late") echo "I go sleep";;
    "day") echo "Games time !!!";;
    "night") echo "I need smth to eat";;
    "morning") echo "Wake up!";;
    "lunchtime") echo "EATEATEAT";;
    "evening") echo "Only 4 hours to the next day";;
    *) echo "Podano nieznaną pore dnia"
  esac
fi
