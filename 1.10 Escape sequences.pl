use strict;
use warnings;

$|=1;

sub main {

        # * matches zero or more of the preceding character. Greedy by default.
        # d* matches zero or more d's /* zero or more 7's, etc...
        # .* matches zero or more of any character, as many as possible
        # .*? matches zero or more of any character, as few as possible
        # . matches any character
        # + match one or more of the preceding character. Greedy by default.

    # \d matches any digit
    # \s space matches space
    # \S non-space matches any non-space character
    # \w matches any alphanumeric character including underscore


    my $text = 'Iam117yearsold_tomorrow.';

    if($text =~ /(\w*)/) {
        print "Matched: '$1'\n";
    }
}

main();