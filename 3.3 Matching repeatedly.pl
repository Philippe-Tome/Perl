use strict;
use warnings;
use LWP::Simple;

$|=1;

sub main {

    my $content = get("http://www.caveofprogramming.com");

    unless(defined($content)) {
        die "Unreachable url\n";
    }

    # i for case insensitive
    # s for treat new line as another character. Treat the whole thing as a single line.
    # ^> not matching >
    while($content =~ m|<\s*a\s+[^>]*href\s*=\s*['"]([^>"']+)['"][^>]*>([^<>]*)</|sig) {     # if you use any non-standard quote instead of // for Regex you need to put a "m" before;
        print "$2: $1\n";
    }

}
main();