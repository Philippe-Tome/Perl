use strict;
use warnings;

$|=1;

sub main {

    my @fruits = ("apple", "banana", "orange");
    
    my %months = (
        "Jan" => 1,
        "Feb" => 2,
    );

    # print $fruits[0] . "\n";
    $fruits[3] = "kiwi";

    # print $months{"Jan"} . "\n";
    $months{"Mar"} = 3;


    my $fruits_ref = \@fruits;
    # print $fruits_ref->[0] . "\n";  # apple

    my $months_ref = \%months;
    # print $months_ref->{"Mar"} . "\n";  # 3

    # # Casting means to change one type to another type
    # foreach my $fruit(@fruits) {
    #     print "$fruit\n";
    # }

    # # Good way to iterate through a hash is by using a while loop
    # while(my ($key, $value) = each %months) {
    #     print "$key - $value\n";
    # }

    # Iterate through a reference
    foreach my $fruit(@$fruits_ref) {
        print "$fruit\n";
    }

    while(my ($key, $value) = each %$months_ref) {
        print "$key - $value\n";
    }

}

main();