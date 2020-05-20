use strict;
use warnings;

$|=1;

sub main {

    my $input = 'E:\Dev\Perl 5\Code files\1\mymanjeeves.txt';
    open(INPUT, $input) or die("Input file $input not found.\n");

    my $output = 'output.txt';
    open(OUTPUT, '>'.$output) or die "Can't create $output.\n";

    while(my $line = <INPUT>) {

        if($line =~ /\begg\b/) {
            $line =~ s/\bhen\b/dinausor/ig;
            print OUTPUT $line;
        }
    }

    close(INPUT);
    close(OUTPUT);
}

main();