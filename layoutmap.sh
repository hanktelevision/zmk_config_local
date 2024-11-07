#!/bin/bash
_temp='./temp.txt'
keymap='./config/corne.keymap' 
$(cat "$keymap" | sed -ne '32,39p;51,58p;70,77p'> "$_temp")
#$(cat "$_temp" | sed -e 's,^..,||,g; s,^.\{30\}$,&--,g; s/\(.\{73\}\)/\1||/g' > ./keymapPrint.txt)
#$(cat ./test2.txt | awk '{"*" $0 "*"}')>>./test2.txt

cat "$_temp" | sed 's/^../||/g; s/\(.\{73\}\)/\1||/g; s/\(.\{75\}\).*/\1/g  > ./keymapPrint.txt




