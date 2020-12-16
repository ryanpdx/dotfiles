#! /bin/bash

if [ $# != 1 ]; then
    echo "Missing value"  
    exit 1
fi

value=1

if [ $1 -gt 0 ] && [ $1 -lt 100 ]; then
    value="0.$1"
elif [ $1 -eq 100 ]; then
    value="1"
elif [ $1 -eq 0 ]; then
    value="0"
else
    echo "Invalid arg."
    exit 1
fi

eval "xrandr --output eDP-1 --brightness $value"
exit 0


#eval "xrandr --verbose | grep -i brightness"
