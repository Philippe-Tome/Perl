cat one.txt     # Shows content of one.txt

perl -pe 's/\bme\b/ZORG/gi' one.txt    # Looping the text file. Replacing all the 'me' with ZORG.

perl -pe 's/\bme\b/ZORG/gi' one.txt > temp.txt  # Same as above apart that it creates a new file to output the value.