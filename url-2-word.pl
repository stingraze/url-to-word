$dbfile = "alllinks.txt";
open (I, "$dbfile") or die "Unable to open: $dbfile";
my @lines = <I>;
close I;

print "started";

foreach (@lines){
	chomp;
	$url = $_;
	$match = "/";
	$count = () = $url =~ /$match/g;
	#If slash is over 3 then proceeed with printing out word 
	if ($count > 3) { 
	$url =~ m|([^/]+)/?$|;	
	$end_of_url = $1;
	$end_of_url =~ s/-/ /g;
	$end_of_url =~ s/_/ /g;	

	open(OUT,">> lastword-url.txt");
	print OUT "$end_of_url\n";
	close(OUT);
	}

}