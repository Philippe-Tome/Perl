use strict;
use warnings;
use Data::Dumper;

use lib '/media/ta/PT_SD_CARD/Dev/Perl5/Codefiles/Part8/Modules';   # To add modules directories to @INC

use Data::Person;
use Data::Car;


use Speak8_2 qw(test greet);

$|=1;

sub main {

    my $person1 = new Data::Person("Bob", 45);  # $person& is a blessed hash.
    $person1->greet("Mike");

    my $person2 = new Data::Person("Mike", 55);
    $person2->greet("Bob");

    my $car1 = new Data::Car("Ford", 2001);
    $car1->summary();

}

main();