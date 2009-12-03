
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-TraitFor-Controller-DoesExtPaging',
  NAME      => 'Catalyst::TraitFor::Controller::DoesExtPaging',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Paginate\ DBIx\:\:Class\:\:ResultSets\ for\ ExtJS\ consumption",
  VERSION   => '0.093370',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
  (eval { ExtUtils::MakeMaker->VERSION(6.55_01) } ? () : (
    "SQL::Translator" => '0.1103',
    "FindBin" => '0',
    "Catalyst::Model::DBIC::Schema" => '0.29',
    "Test::More" => '0.92',
    "Catalyst::View::JSON" => '0.26',
    "Catalyst::Test" => '0',
    "Test::Deep" => '0',
  )),
    "Catalyst::Runtime" => '5.8',
    "Catalyst::TraitFor::Controller::DBIC::DoesPaging" => '0.093200',
  },
(eval { ExtUtils::MakeMaker->VERSION(6.55_01) } ? (
  BUILD_REQUIRES    => {
    "SQL::Translator" => '0.1103',
    "FindBin" => '0',
    "Catalyst::Model::DBIC::Schema" => '0.29',
    "Test::More" => '0.92',
    "Catalyst::View::JSON" => '0.26',
    "Catalyst::Test" => '0',
    "Test::Deep" => '0',
  },
) : ()),
  test => {TESTS => 't/*.t'}
);

