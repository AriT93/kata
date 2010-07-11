#!/usr/bin/perl -w

use Test::More;
use CodeBreaker;

my $cb = CodeBreaker->new();
isa_ok( $cb,"CodeBreaker","CodeBreaker->new");

$cb->secret(qw{r g b y});
my @fourP = qw{p p p p};
my @retval = $cb->guess(qw{r g b y});
is_deeply(\@retval,\@fourP);


done_testing();
