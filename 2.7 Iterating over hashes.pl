use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    my %foods = (
        "cats" => "cheese",
        "dogs" => "meat",
        "birds" => "seeds", 
    );

    # We can define an array of variables like this:
    my ($one, $two, $three) = (1, 2, 3);

    print "The value of \$two is $two\n";

    # Most common way to iterate through a hash:
    while(my ($key, $value) = each %foods) {    # to iterate through the hash.
        print "$key: $value\n";
    }

    # # Another way to iterate through a hash:
    # my @animals = keys %foods;

    # print Dumper(@animals);

    # foreach my $key(@animals) {
    #     my $value = $foods{$key};
    #     print "$key = $value\n";
    # }

    # Another way to iterate through a hash and with sorting the keys:
    foreach my $key(sort keys %foods) {
        my $value = $foods{$key};
        print "$key = $value\n";
    }

}


main();