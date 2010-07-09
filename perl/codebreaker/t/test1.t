#!/usr/bin/perl -w
use Test::More;

use CodeBreaker;

my $cb = CodeBreaker->new();
isa_ok( $cb,"CodeBreaker","CodeBreaker->new");
$cb->secret(qw{r g b y});

eq_array($cb->guess(qw{r g b y}),[4,0]);

done_testing();
