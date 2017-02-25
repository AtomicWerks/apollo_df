#!/bin/env bash
status="$(cat /sys/class/power_supply/BAT0/status)"
capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
if [[ $status == "Charging" ]]; then
     echo -en "%{F#83a598}\uf0e7 "
   elif [[ $capacity -ge  "85" ]]; then
     echo -en "%{F#458588}\uf240 "
   elif [[ $capacity -ge "65" ]]; then
     echo -en "%{F#98971a}\uf241 "
   elif [[ $capacity -ge "45" ]]; then
     echo -en "%{F#d79921}\uf242 "
   elif [[ $capacity -ge "15" ]]; then
     echo -en "%{F#cc241d}\uf243 "
   elif [[ $capacity -ge "0" ]]; then
     echo -en "%{F#fb4934}\uf244 " 
   fi
   echo -n "$capacity%%{F-}"

