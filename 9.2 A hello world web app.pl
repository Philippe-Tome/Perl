# Create file with extension .cgi

#!path to perl. ShBang.To find path to Perl type in Unix terminal "which perl"

use strict;
use warnings;

sub main {
    print "Content-type: text/html\n\n";

    print "Hello world";

}

main();


# Type in the console: ./test.cgi     # test.cgi is the name of the script file being ran.
# The print line should be executed.


