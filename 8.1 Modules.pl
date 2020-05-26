use strict;
use warnings;
use Data::Dumper;

# Module saved at path: admin:///usr/local/share/perl/5.26.1

use Speak8_1 qw(test greet);

$|=1;

sub main {
    # Speak::test();

    test();
    greet();

    # my @dogs = qw(retriever labrador alsacian);   # qw is like a shortcut to not use the string quotation "". Only if the strings in the array don't have any spaces.

    # print Dumper(@dogs);


}

main();