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

    LINE: while(my $line = <INPUT>) {   

        # s -> Substitution. 
        # ^ -> Matches the beginning of the line.
        # $ -> Matches the end of the line.

        # $line =~ s/^\s*//;  # \s* one or more space.
        # $line =~ s/\s*$//;  # $ for the end of line;
        $line =~ s/^\s*|\s*$//g;  # Combines both lines into one. Need to use global so it does as many times as possible in the same line. 

        $line =~ s/\?|approx\.|\$//g;

        $line =~ /\S+/ or next;     

        print $line . "\n";

        chomp $line;   

        my @values = split /\s*,\s*/, $line; 

        if(@values < 3) {   
            print "Invalid line: $line\n";
            next;
        }

        foreach my $value(@values) {
            if($value eq '') {     
                print "Invalid line: $line\n";
                next LINE; 
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

    # print "Descartes: " . $data[3]{"Name"} . "; Date: '" . $data[3]{"Date"} . "'";
    print "Descartes: $data[3]{'Name'}; Date: '$data[3]{'Date'}'\n";
}

main();