#!/bin/bash
if [[ $(setxkbmap -query | grep layout) == "layout:     us" ]]; then
    setxkbmap -model abnt2 -layout br -variant abnt2
else
    setxkbmap -model pc105 -layout us
fi
sleep 3

