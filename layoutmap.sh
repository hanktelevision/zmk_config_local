#!/bin/bash
_temp='./temp.txt'
keymap='./config/corne.keymap' 
$(cat "$keymap" | sed -ne '32,39p;51,58p;70,77p'> "$_temp")
#$(cat "$_temp" | sed -e 's,^..,||,g; s,^.\{30\}$,&--,g; s/\(.\{73\}\)/\1||/g' > ./keymapPrint.txt)
#$(cat ./test2.txt | awk '{"*" $0 "*"}')>>./test2.txt
$(cat temp.txt | sed -e 's,^..,||,g; /[^-]$/s/$/ |/' > ./temp2.txt)
$(cat ./temp2.txt | sed -e 's,^\(.\{73\}\),\1 ||,' > ./temp3.txt)
$(cat ./temp3.txt | sed -e '/^\(.\{0,9\}\)[A-Z]\{3,\}/s/$/|/;' > keymapPrint.txt )

cat $_temp
cat keymapPrint.txt
lp -d cups-PDF keymapPrint.txt



