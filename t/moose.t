#!/usr/bin/env perl
#
# This file is part of MooX-Option
#
# This software is copyright (c) 2011 by Geistteufel <geistteufel@celogeek.fr>.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#

use strict;
use warnings;
use Test::More;
use Test::Trap;
use Carp;
use FindBin qw/$RealBin/;

BEGIN {
    use Module::Load::Conditional qw/check_install/;
    plan skip_all => 'Need Moose for this test'
        unless check_install( module => 'Moose' );
}

{

    package t;
    use Moose;
    use MooX::Option filter => 'Moose';

    option 'bool'    => ( is => 'ro' );
    option 'counter' => ( is => 'ro', repeatable => 1 );
    option 'empty'   => ( is => 'ro', negativable => 1 );
    option 'split'   => ( is => 'ro', format => 'i@', autosplit => 1 );

    1;
}

{

    package r;
    use Moose;
    use MooX::Option filter => 'Moose';

    option 'str_req' => ( is => 'ro', format => 's', required => 1 );

    1;
}

subtest "Moose" => sub {
    note "Test Moose";
    require $RealBin . '/base.st';
};

done_testing;
