# Create file with extension .cgi

#!path to perl. ShBang.To find path to Perl type in Unix terminal "which perl"

use strict;
use warnings;

use CGI;

my $CGI = new CGI();

sub main {
    print $CGI->header();

print<<HTML;
    <html>
        <b>hello world</b>
    </html>

HTML
}

main();


# Type in the console: ./test.cgi     # test.cgi is the name of the script file being ran.
# The print line should be executed.


