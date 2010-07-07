
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Metabase transport for Test::Reporter',
  'AUTHOR' => 'David Golden <dagolden@cpan.org>, Richard Dawe <richdawe@cpan.org>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Test-Reporter-Transport-Metabase',
  'EXE_FILES' => [],
  'LICENSE' => 'apache',
  'NAME' => 'Test::Reporter::Transport::Metabase',
  'PREREQ_PM' => {
    'CPAN::Testers::Report' => '1.999',
    'Carp' => '0',
    'Config::Perl::V' => '0',
    'JSON' => '2',
    'Metabase::Client::Simple' => '0.004',
    'Metabase::User::Profile' => '0.006',
    'Metabase::User::Secret' => '0.006',
    'Test::More' => '0.88',
    'Test::Reporter::Transport' => '1.57'
  },
  'VERSION' => '1.999005',
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



