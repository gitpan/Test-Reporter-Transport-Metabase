#!perl
# 
# This file is part of Test-Reporter-Transport-Metabase
# 
# This software is Copyright (c) 2010 by David Golden.
# 
# This is free software, licensed under:
# 
#   The Apache License, Version 2.0, January 2004
# 

use Test::More tests => 1;

BEGIN {
	use_ok( 'Test::Reporter::Transport::Metabase' );
}

diag( "Testing Test::Reporter::Transport::Metabase $Test::Reporter::Transport::Metabase::VERSION, Perl $], $^X" );
