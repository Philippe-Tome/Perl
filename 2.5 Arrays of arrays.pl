use strict;
use warnings;

$|=1;

use Data::Dumper;

my @animals = ('dog', 'cat', 'rabbit');
my @fruits = ('apple', 'banana', 'orange');

my $fruits_ref = \@fruits;
print $fruits_ref->[0] . "\n";

my @values;

# Arrays of arrays in Perl are only references to the arrays.

push @values, \@animals; # pushing animals onto @values # \ takes a reference of the array
push @values, \@fruits;

print Dumper(@values);


# sub main {
#     my $input = "test.csv";

#     unless (open(INPUT, $input)) { 
#         die "\nCannot open $input\n";
#     }

#     <INPUT>;

#     my @lines;

#     while(my $line = <INPUT>) {

#         chomp $line;   

#         my @values = split /\s*,\s*/, $line; 

#         # print Dumper(@values);
 
#         push @lines, \@values;

#     }
#     close INPUT;

#     print $lines[3][1] . "\n";

#     foreach my $line(@lines) {
#         print Dumper($line);

#         print "Name " . $line->[0] . "\n";
#     }
# }

# main();