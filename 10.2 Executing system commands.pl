use strict;
use warnings;

use File::Copy;

$|=1;

sub main {
    # my $command = 'ls -ls';
    my $command = 'cd ..;ls -l';
    my @output = `$command`;

    print join('', @output);
}

main();