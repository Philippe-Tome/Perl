use strict;
use warnings;

$|=1;

sub main {
    my $file = 'E:\Dev\Perl 5\Code files\1\mymanjeeves.txt';

    open(INPUT, $file) or die("Input file $file not found.\n");
    my $counter = 0;
    while(my $line = <INPUT>) {
        if($line =~ / egg /) {
            print $line;
            $counter++;
        }
    }

    print "\n";
    print $counter;

    close(INPUT);
}

main();