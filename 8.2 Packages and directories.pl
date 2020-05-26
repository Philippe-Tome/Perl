use strict;
use warnings;
use Data::Dumper;

use lib '/media/ta/PT_SD_CARD/Dev/Perl5/Codefiles/Part8/Modules';   # To add modules directories to @INC

use Speak8_2 qw(test greet);

$|=1;

sub main {
    test();
    greet();

}

main();