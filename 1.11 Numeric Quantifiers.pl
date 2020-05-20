use strict;
use warnings;

$|=1;

sub main {

        # * matches zero or more of the preceding character, as many as possible. Greedy by default.
        # + match one or more of the preceding character, as many as possible. Greedy by default.
        # ? Not-greedy.
        # *? matches zero or more of the preceding character, as few as possible. Not-Greedy.
        # +? match one or more of the preceding character, as few as possible. Not-Greedy.
        # d* matches zero or more d's /* zero or more 7's, etc...
        # . matches any character
        # .* matches zero or more of any character, as many as possible
        # .*? matches zero or more of any character, as few as possible.
        # {5} five of the preceding.
        # {3,6} at least 3 and a maximum of 6 of the preceding.
        # {3,} at least 3 of the preceding.
        # \d matches any digit
        # \s space matches space
        # \S non-space matches any non-space character
        # \w matches any alphanumeric character including underscore



    my $text = 'DE75883';

    if($text =~ /(DE\d{3,})/) {
        print "Matched: '$1'\n";
    }
}

main();