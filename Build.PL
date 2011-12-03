
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "English" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "FindBin" => 0,
    "Mo" => 0,
    "Module::Build" => "0.3601",
    "Module::Load::Conditional" => 0,
    "Moo" => 0,
    "Moose" => 0,
    "Mouse" => 0,
    "Scalar::Util" => 0,
    "Test::More" => "0.94",
    "Test::Trap" => 0,
    "perl" => "5.004"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "add option keywords to your Moo object",
  "dist_author" => [
    "Geistteufel <geistteufel\@celogeek.fr>"
  ],
  "dist_name" => "MooX-Option",
  "dist_version" => "0.3",
  "license" => "perl",
  "module_name" => "MooX::Option",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Data::Dumper" => 0,
    "Data::Record" => 0,
    "Getopt::Long::Descriptive" => 0,
    "Regexp::Common" => 0,
    "perl" => "5.010",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
