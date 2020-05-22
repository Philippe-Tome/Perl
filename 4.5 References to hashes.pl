use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;


$|=1;

sub main {
    my %opts;

    getopts('af:c', \%opts);    

    if(!checkusage(%opts)) {
        usage();
    }

=pod
    perl 4.5\ References\ to\ hashes.pl -a -f test.xml -c 

    a => 1
    c => 1
    f => test.xml 
=cut

    my $opts_ref = \%opts;

    # Use hash directly:
    print $opts{"f"} . "\n";

    # Use reference to hash
    print $opts_ref->{"f"} . "\n";  # De-referencing the hash.
}

sub checkusage {

    my $opts_ref = shift;   # Different scope.

    print $opts_ref->{"f"} . "\n";

    # Don't recommend doing this below way:
    # my %opts = @_;   # this opts is of a different scope of the main opts.

    # print Dumper(%opts);

    # print $opts{"f"};

    return 1;
}

sub usage {
    my $help = <<USAGE;     

usage: perl main.pl -f <options> -a
    -f <file name>  specify file name to parse
    -a turn off error checking

example usage: 
    perl main.pl -f <file name> -a
USAGE

    die $help; 
}
main();