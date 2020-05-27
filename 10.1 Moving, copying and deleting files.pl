use strict;
use warnings;

use File::Copy;

$|=1;

sub main {
    # if(copy('/home/ta/Desktop/useFile.txt', '/home/ta/Documents/useFileCopied.txt')) {
    #     print "One file copied.\n"
    # } else {
    #     print "Unable to copy file.\n";
    # }
    if(move('/home/ta/Desktop/useFile.txt', '/home/ta/Documents/')) {
        print "One file moved.\n"
    } else {
        print "Unable to move file.\n";
    }

    unlink('logo2.png'); # deletes files.
}

main();