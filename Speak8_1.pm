# Module saved at path: admin:///usr/local/share/perl/5.26.1
package Speak8_1;

use Exporter qw(import);

@EXPORT_OK = qw(test greet);
# @EXPORT = qw(test);

sub test {
    print "Hello there.\n";
}

sub greet {
    print "Hey, how's it going?\n";
}

1;  # You have to always return a value.
