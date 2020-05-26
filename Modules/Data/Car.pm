package Data::Car;

sub new {
    my $class = shift;

    my $self = {    # reference to a hash.
        "make" => shift,
        "year" => shift,
    };

    bless($self, $class);   

    return $self;
}

sub summary {
    my ($self, $other) = @_;

    print "Hello, my make is " . $self->{"make"} . " and I was made in " . $self->{"year"} . ".\n";
}

1;