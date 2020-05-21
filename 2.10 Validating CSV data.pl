use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {
    my $input = "test.csv";

    unless (open(INPUT, $input)) { 
        die "\nCannot open $input\n";
    }

    <INPUT>;

    my @data;

    LINE: while(my $line = <INPUT>) {   # LINE is a label for the while loop.

        $line =~ /\S+/ or next;     # S non space. If blank line -> go to next line.

        chomp $line;   

        my @values = split /\s*,\s*/, $line; 

        if(@values < 3) {   # If array length is less than 3 go to next line.
            print "Invalid line: $line\n";
            next;
        }

        foreach my $value(@values) {
            if($value eq '') {      # When comparing strings in Perl you need to use eq for equal and neq for not equal.
                print "Invalid line: $line\n";
                next LINE;  # Skips to the next line of the while loop otherwise if only using next it means next of the foreach loop.
            }
        }

        my ($name, $payment, $date) = @values;

        my %values = (
            "Name" => $name,
            "Payment" => $payment,
            "Date" => $date,
        );

        push @data, \%values;

    }
    close INPUT;

    foreach my $data(@data) {
        print $data->{"Payment"} . "\n";
    }

    print $data[3]{"Name"} . "\n";
}

main();