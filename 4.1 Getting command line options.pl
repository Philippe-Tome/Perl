use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;


$|=1;

sub main {
    my %opts;

    getopts('af:c', \%opts);    # a f c are flags. Put a column : after the flags that you want to take an argument.

    print Dumper(%opts); 

    my $file = $opts{'f'};

    print "File: $file\n";
}
main();