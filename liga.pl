#!/usr/bin/perl

LINE:
while (<>) 
{
	if(/CH=/)
	{
		s/ffi/ﬃ/g ;
		s/ffl/ﬄ/g ;
		s/fi/ﬁ/g ;
		s/fl/ﬂ/g ;
	}
	print $_ ;
}