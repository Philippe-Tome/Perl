# perl online into google.
# perl -h -> help.

perl -pe 's/\bme\b/ZORG/ig' *.txt     # -p = loop. e = perl script to use. Replaces all the 'me' in all the .txt files with ZORG.

perl -i.orig -pe 's/\bme\b/ZORG/ig' *.txt   # Replaces the original file with ZORG and renames the original with a .orig after the extension.


