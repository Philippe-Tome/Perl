use strict;
use warnings;

$|=1;

sub main {

    my $file = 'E:\Dev\Perl 5\Code files\1\mymanjeeves.txt';

    open(INPUT, $file) or die("Input file $file not found.\n");

    while(my $line = <INPUT>) {
        if($line =~ /(I..a.)(...)/) {
            print "First match: '$1'; second match: '$2'\n";
        }
    }

    close(INPUT);
}

main();