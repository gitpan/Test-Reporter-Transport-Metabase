
use strict;
use warnings;

BEGIN { require 5.006; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Metabase transport for Test::Reporter',
  'AUTHOR' => 'David Golden <dagolden@cpan.org>, Richard Dawe <richdawe@cpan.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Test-Reporter-Transport-Metabase',
  'EXE_FILES' => [],
  'LICENSE' => 'apache',
  'NAME' => 'Test::Reporter::Transport::Metabase',
  'PREREQ_PM' => {
    'CPAN::Testers::Report' => '1.999001',
    'Carp' => '0',
    'Config::Perl::V' => '0',
    'File::Glob' => '0',
    'JSON' => '2',
    'Metabase::Client::Simple' => '0.008',
    'Metabase::User::Profile' => '0.016',
    'Metabase::User::Secret' => '0.016',
    'Test::Reporter::Transport' => '1.57'
  },
  'VERSION' => '1.999008',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



