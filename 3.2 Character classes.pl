use strict;
use warnings;

$|=1;

sub main {

    # [0-9] any number
    # [A-Z] any uppercase letter (in the English alphabet)
    # [A-Za-z_0-9] specify alternatives just by listing them. 
    # [\=\%] simply list alternatives. Backlash any character that might have a special meaning in Regex.
    # [ABC] list of alternates 
    # [^0-9T\s] Match anything except the specified characters. And no space.

    my $content = "The 39 steps - a GREAT book - Colours_15 ==%== ABBCCBBCCABCA";

    # if($content =~ /([0-9]+)/) {    # same as \d+ 
    # if($content =~ /([A-Z]{2,})/) {    # To find uppercase characters from A to Z. Match at least 2.
    # if($content =~ /(C[A-Za-z_0-9]{2,})/) {  
    # if($content =~ /([\=\%]{2,})/) {  
    # if($content =~ /([ABC]{3,})/) {  
    if($content =~ /([^0-9T\s]{5,})/) {  
        print "Matched '$1'\n";
    } else {
        print "No match\n";
    }
}
main();