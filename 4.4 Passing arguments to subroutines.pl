use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;


$|=1;

sub main {
    my %opts;

    # Get command line options
    getopts('af:c', \%opts);    

    if(!checkusage("Hello", 7)) {
        usage();
    }
}

sub checkusage {

    my $greeting = shift @_;    # In Perl shift by default will be applied to @_. So no need to write it down.
    my $number = shift;

    # my ($greeting, $number) = @_;   # De-structure the array. Good when you have multiple argumemnts.

    print "$greeting number $number\n";

    # print Dumper($_);   # @_ acess all the arguments passed in the function.
    return 1;
}

sub usage {
    my $help = <<USAGE;     # to create a multi-line strings. To close it Write USAGE with no space before it. USAGE is a label and can be named anything.

usage: perl main.pl -f <options> -a
    -f <file name>  specify file name to parse
    -a turn off error checking

example usage: 
    perl main.pl -f <file name> -a
USAGE

    die $help; 

}

main();