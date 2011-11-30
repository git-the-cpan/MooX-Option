#!/usr/bin/env perl 
#
# This file is part of MooX-Option
#
# This software is copyright (c) 2011 by Geistteufel <geistteufel@celogeek.fr>.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use lib 'lib';

{

    package t;
    use Moo;
    use MooX::Option;
    option 'verbose' =>
        ( is => 'ro', short => 'v', doc => 'verbose option', required => 1 );
}

t->new_with_options;
