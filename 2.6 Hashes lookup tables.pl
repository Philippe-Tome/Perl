use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    my %months = (      # % is a hash in Perl.
        "Jan" => 1,
        "Dec" => 12,
        "Mar" => 3,
        "Jun" => 6,
    );    

    print $months{"Dec"} . "\n";

    my %days = (
        1 => "Monday",
        2 => "Tuesday",
        3 => "Wednesday",
        4 => "Thursday",
    );

    print $days{1} . "\n";

    my @months = keys %months;

    foreach my $month(@months) {
        my $values = $months{$month};

        print "$month: $values\n";  # prints  months keys and pairs.
    }

    while(my ($key, $value) = each %days ) {
        print "$key: $value\n";
    }

}


main();