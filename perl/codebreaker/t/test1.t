#!/usr/bin/perl -w

use Test::More;

use CodeBreaker;

my $cb = CodeBreaker->new();
isa_ok( $cb,"CodeBreaker","CodeBreaker->new");

$cb->secret(qw{r g b y});

my @retval = $cb->guess(qw{r g b y});
print "@retval hmmm\n ";
print "&$cb->secret right here\n";
is_deeply(\@retval,\@$cb->secret());


done_testing();
