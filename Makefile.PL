
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Test::Reporter::Transport::Metabase',
                       'DISTNAME' => 'Test-Reporter-Transport-Metabase',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'David Golden <dagolden@cpan.org>, Richard Dawe <richdawe@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Metabase transport for Test::Reporter',
                       'EXE_FILES' => [],
                       'VERSION' => '1.999004',
                       'PREREQ_PM' => {
                                        'Test::Reporter::Transport' => '1.57',
                                        'Metabase::Client::Simple' => '0.004',
                                        'Metabase::User::Secret' => '0.006',
                                        'CPAN::Testers::Report' => '1.999',
                                        'Carp' => '0',
                                        'Test::More' => '0.88',
                                        'Config::Perl::V' => '0',
                                        'Metabase::User::Profile' => '0.006',
                                        'JSON' => '2'
                                      },
                       'LICENSE' => 'apache'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



