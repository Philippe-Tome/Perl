use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;

sub main {
    my %opts;

    getopts('af:r', \%opts);    

    if(!checkusage(\%opts)) {
        usage();
    }
}

sub checkusage {
    my $opts = shift;   

    my $a = $opts->{"a"};
    my $r = $opts->{"r"};
    my $f = $opts->{"f"};

    # Image a is optional; don't really need to refer to it here at all.
    # r is mandatory: it means "run the program"
    # f is mandatory.

    unless(defined($r) and defined($f)) {
        return 0;
    }

    unless($f =~ /\.xml$/i) {  # Matches .xml $ anchor to the end. Case insensitive.
        print "Input file must have the extension .xml\n";
        return 0;

    }
    return 1;
}

sub usage {
    my $help = <<USAGE;     

usage: perl main.pl -f <options> -a
    -f <file name>  specify file name to parse
    -a turn off error checking

example usage: 
    perl main.pl -r -f <file name> -a
USAGE

    die $help; 
}
main();