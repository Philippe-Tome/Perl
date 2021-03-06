use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;
use XML::Simple;

$| = 1;

sub main {
	my %opts;
	
	# Get command line options
	getopts('d:r', \%opts);
	
	if(!checkusage(\%opts)) {
		usage();
		exit();
	} 
	
	my $input_dir = $opts{"d"};

	my @files = get_files($input_dir);

    process_files(\@files, $input_dir);
}

sub process_files {
    my ($files, $input_dir) = @_;

    foreach my $file(@$files) { # the @ casts the scalar to become an array.
        my @bands = process_file($file, $input_dir);

        print Dumper(@bands);
    }
}

sub process_file {
    my ($file, $input_dir) = @_;
    print "Processing $file in $input_dir ...\n";

    my $filepath = "$input_dir/$file";
    open(INPUTFILE, $filepath) or die "Unable to open $filepath\n";

	undef $/;

	my $content = <INPUTFILE>;

    close(INPUTFILE);

	my $parser = new XML::Simple;	
	my $dom = $parser->XMLin($content, ForceArray => 1);

    print Dumper($dom);

    my @output;

	foreach my $band(@{$dom->{"entry"}}) {	
		my $band_name = ($band->{"band"}->[0]);

        print "$band_name\n"; 
        print "==================\n"; 

		my $albums = ($band->{"album"});

        my @albums;
        
        foreach my $album(@$albums) {
            my $album_name = $album->{"name"}->[0];
            my $chartposition = $album->{"chartposition"}->[0];

            print "$album_name: $chartposition\n";

            push @albums, {
                "name" => $album_name,
                "position" => $chartposition,
            }
        }

        push @output, {  # Push onto the array output a hash reference
            "name" => $band_name,
            "albums" => \@albums,

        };
	}
    return @output;
}

sub get_files {
	my $input_dir = shift;
	
	unless(opendir(INPUTDIR, $input_dir)) {
		die "\nUnable to open directory '$input_dir'\n";
	}
	
	my @files = readdir(INPUTDIR);
	
	closedir(INPUTDIR);
	
	@files = grep(/\.xml$/i, @files);	# Matches each file in the Regex, first argument is a Regex, second is the array.
	
	return @files;
}

sub checkusage {
	my $opts = shift;
	
	my $r = $opts->{"r"};
	my $d = $opts->{"d"};
	
	# Image a is optional; don't really need to refer to it here at all.
	
	# r is optional
	# d is mandatory.
	
	unless(defined($d)) {
		return 0;
	}
	
	return 1;
}

sub usage {
	print <<USAGE;
	
usage: perl main.pl <options>
	-d <directory>	specify directory in which to find XML files.
	-r run the program; process the files

example usage:
	# Process files in currect directory.
	perl main.pl -d . -r
	
USAGE
}

main();