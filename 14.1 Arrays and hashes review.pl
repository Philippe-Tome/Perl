use strict;
use warnings;

$|=1;

sub main {

    my @fruits = ("apple", "banana", "orange");
    
    my %months = (
        "Jan" => 1,
        "Feb" => 2,
    );

    print $fruits[0] . "\n";
    $fruits[3] = "kiwi";

    print $months{"Jan"} . "\n";
    $months{"Mar"} = 3;

}

main();