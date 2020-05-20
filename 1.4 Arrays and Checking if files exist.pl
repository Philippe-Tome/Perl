use strict;
use warnings;

$|=1; # turns off output buffering.

sub main{

    my @files = ('E:\Dev\Perl 5\Code files\1\logo.png', 'E:\Dev\Perl 5\Code files\1\home.html', 'E:\Dev\Perl 5\Code files\1\logo.pd'
    );

    foreach my $file(@files){
        if(-f $file) {
            print "Found file: $file\n";
        } else {
            print "File not found: $file\n";
        }
    }

    # my $file = 'E:\Dev\Perl 5\Code files\1\logo.png';

    
}

main();