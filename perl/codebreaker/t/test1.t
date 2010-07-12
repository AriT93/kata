#!/usr/bin/perl -w

use Test::More;
use CodeBreaker;

my $cb = CodeBreaker->new();
isa_ok( $cb,"CodeBreaker","CodeBreaker->new");
my @fourP = qw{p p p p};
my @threeP = qw{p p p m};
my @twoP = qw{p p m m};
my @oneP = qw{p m m m};
my @fourM = qw{m m m m};
my @noMatch=();
push(@noMatch,' ');
push(@noMatch,' ');
push(@noMatch,' ');
push(@noMatch,' ');
$cb->secret(qw{r g b y});
my @retval = $cb->guess(qw{r g b y});
is_deeply(\@retval,\@fourP);
@retval = $cb->guess(qw{r b g y});
is_deeply(\@retval,\@twoP);
@retval = $cb->guess(qw{y b r g});
is_deeply(\@retval,\@fourM);
@retval = $cb->guess(qw{c c c c});
is_deeply(\@retval, \@noMatch);

done_testing();
