use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;


$|=1;

sub main {
    my %opts;

    getopts('af:c', \%opts);    # a f c are flags. Put a column : after the flags that you want to take an argument.

    if(!checkusage()) {
        usage();
    }
}

sub checkusage {
    return 0;
}

sub usage {
    print "Incorrect options\n";
}

main();