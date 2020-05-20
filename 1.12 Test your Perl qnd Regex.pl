# * matches zero or more of the preceding character, as many as possible. Greedy by default.
# + match one or more of the preceding character, as many as possible. Greedy by default.
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
# \w matches any alphanumeric character including underscore.

use strict;
use warnings;

$|=1;

# sub main {
#     my $text = 'Hello world';
#     print "$text\n";
# }

# main();
###########################################################
# sub main2 {
#     my @emailList = (
#         'billy@bi.com', 
#         'joe@joe.com', 
#         'wrong1.com', 
#         '@f.com', 
#         'wrong3@wrong3.', 
#         'wrong4@wrong4',
#     );

#     foreach my $email(@emailList) {
#         if($email =~ /(\w+@\w+\.\w+)/) {
#             print "$email Valid email.\n";
#         } else {
#             print "$email Invalid email.\n";
#         }
#     }
# }

# main2();
###########################################################
# sub main3 {
#     my $text = "The code for this device is GP8765.";

#     if($text =~ /(\w{2}\d{4})/) {
#         print "The code is: $1\n";
#     } else {
#         print "Not found.\n";
#     }
# }

# main3();
###########################################################
# sub main4 {
#     my $text = "The code for this device is GP8765.";

#     if($text =~ /\sis\s(.+?)\./) {
#         print "The code is: $1\n";
#     } else {
#         print "Not found.\n";
#     }
# }

# main4();
###########################################################
sub main5 {
    my $text = "The code for this device is GP8765.";

    if($text =~ /is\s(\w{2}\d{2,6})\./) {
        print "The code is: $1\n";
    } else {
        print "Not found.\n";
    }
}

main5();