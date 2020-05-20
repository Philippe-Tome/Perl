use strict;
use warnings;

$|=1;

sub main {
    my $input = "test.csv";

    unless (open(INPUT, $input)) { # Executes when not true.
        die "\nCannot open $input\n";
    }

    <INPUT>;

    while(my $line = <INPUT>) {

        my @values = split ',', $line;

        print $values[0] . "\n";   
    }


    close INPUT;
}

main();