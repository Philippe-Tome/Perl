use strict;
use warnings;

use LWP::Simple;

sub main {
    print "Downloading ...\n";
    # print get("http://www.caveofprogramming.com");
    
    # getstore("http://www.caveofprogramming.com", "home.html"); # saves the content to a new file.

    my $code = getstore('http://www.caveofprogramming.com/images/backgroundopt.jpg', "logo.png");

    if($code == 200) {
        print "Success\n";
    } else {
        print "Failed\n";
    }

    print "Finished\n";
}

main();