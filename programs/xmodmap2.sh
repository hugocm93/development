#!/bin/bash

#Remapping keys
xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
