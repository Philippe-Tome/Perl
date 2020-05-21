use strict;
use warnings;
use Data::Dumper
$|=1;

# perl reads csv files line by line and outputs each line.
# sub main {
#     my $input = "test.csv";

#     unless (open(INPUT, $input)) { # Executes when not true.
#         die "\nCannot open $input\n";
#     }

#     while (my $line = <INPUT>) {
#         chomp $line;
#         print "$line\n";
#     }
# }
# main();
#############################################################
# Skip header line, spaces at the start or the end, put the fields into variables called Name, payment, date.
# sub main {
#     my $input = "test.csv";

#     unless (open(INPUT, $input)) { # Executes when not true.
#         die "\nCannot open $input\n";
#     }

#     <INPUT>;

#     my @data;

#     LINE: while (my $line = <INPUT>) {

#         chomp $line;    # To make sure the line does not include new line character.

#         $line =~ /\S+/ or next;     # Matches non-space.
#         $line =~ s/^\s*|\s*$//g;    # ^ to anchor to the beginning of the line. $ to anchor to the end of the line.
#         $line =~ s/\$|approx.|\?//g;

#         my @values = split /\s*,\s*/, $line;

#         if(@values < 3) {
#             print "Invalid line: $line\n";
#             next;
#         }

#         foreach my $value(@values) {
#             if(length($value) == 0) {
#                 next LINE;
#             }
#         }

#         my ($name, $payment, $date) = @values;



#         print "$name: $payment, $date\n";
#     }
#     close INPUT;
# }
# main();
#############################################################
# Put all the data into a hash and display it, create a total.
# sub main {
#     my $input = "test.csv";

#     unless (open(INPUT, $input)) { # Executes when not true.
#         die "\nCannot open $input\n";
#     }

#     <INPUT>;

#     my @data;

#     LINE: while (my $line = <INPUT>) {

#         chomp $line;    # To make sure the line does not include new line character.

#         $line =~ /\S+/ or next;     # Matches non-space.
#         $line =~ s/^\s*|\s*$//g;    # ^ to anchor to the beginning of the line. $ to anchor to the end of the line.
#         $line =~ s/\$|approx.|\?//g;

#         my ($name, $payment, $date) = split /\s*,\s*/, $line; 
#         my %values = (
#             "Name" => $name,
#             "Payment" => $payment,
#             "Date" => $date,
#         );
#         push @data, \%values;
#     }
#     close INPUT;

#     my $total = 0;
#     foreach my $data(@data) {
#         print $data->{"Name"} . "\n";
#         print $data->{"Payment"} . "\n";
#         $total += $data->{"Payment"};
#         # print $data->{"Date"} . "\n";
#     }
#     print "The total is: \$$total\n";
#     # print Dumper(@data);
# }
# main();
#############################################################
# Use the header to create the names:
sub main {
    my $input = "test.csv";

    unless (open(INPUT, $input)) { # Executes when not true.
        die "\nCannot open $input\n";
    }

    my $headings = <INPUT>;
    chomp $headings;
    my @headings = split /\s*,\s*/, $headings;

    print Dumper(@headings);

    my @data;

    LINE: while (my $line = <INPUT>) {

        chomp $line;    # To make sure the line does not include new line character.

        $line =~ /\S+/ or next;     # Matches non-space.
        $line =~ s/^\s*|\s*$//g;    # ^ to anchor to the beginning of the line. $ to anchor to the end of the line.
        $line =~ s/\$|approx.|\?//g;

        my @values = split /\s*,\s*/, $line; 
        
        if(@values < 3) {
            next;
        }

        my %data;

        for(my $i=0; $i<@headings; $i++) {
            my $heading = $headings[$i];
            my $value = $values[$i];

            $data{$heading} = $value;
        }

        push @data, \%data;
    }
    close INPUT;

    my $total = 0;
    foreach my $data(@data) {
        print $data->{"Name"} . "\n";
        print $data->{"Payment"} . "\n";
        $total += $data->{"Payment"};
        # print $data->{"Date"} . "\n";
    }
    print "The total is: \$$total\n";
    # print Dumper(@data);
}
main();

 
