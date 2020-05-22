use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;


$|=1;

=pod

    This is an ACME XML parser version 1.0
    Use with care.

    # To create multi-line comments.

=cut

sub main {
    my %opts;

    getopts('af:c', \%opts);    

    if(!checkusage()) {
        usage();
    }
}

sub checkusage {
    return 0;
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