#!perl
# 
# This file is part of Test-Reporter-Transport-Metabase
# 
# This software is copyright (c) 2010 by David Golden.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 

use Test::More tests => 1;

BEGIN {
	use_ok( 'Test::Reporter::Transport::Metabase' );
}

diag( "Testing Test::Reporter::Transport::Metabase $Test::Reporter::Transport::Metabase::VERSION, Perl $], $^X" );
