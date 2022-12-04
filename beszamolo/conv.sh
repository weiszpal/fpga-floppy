#!/bin/bash
#enter input encoding here
FROM_ENCODING="WINDOWS-1250"
#output encoding(UTF-8)
TO_ENCODING="UTF-8"
#convert
CONVERT=" iconv  -f   $FROM_ENCODING  -t   $TO_ENCODING"
#loop to convert multiple files 
for  file  in  *.tex; do
     $CONVERT   "$file"   -o  "$file"
done
exit 0
