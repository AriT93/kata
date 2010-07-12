package CodeBreaker;
use strict;
require Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

sub secret {
    my($self, @secret) = @_;
    if (@secret > 0){
        $self->{secret} = \@secret;
        return $self->{secret};
    }else{
        return $self->{secret};
    }
}
sub new(){
    my $class = shift;
    my $self = {};
    $self->{secret} = [];
    bless($self, $class);
    return $self;
}
sub guess() {
    my ($self, @guess) = @_;
    my @secret = @{$self->{secret}};
    my @retval= ();
    my $m = 0;
    my $p = 0;
    my $x = 0;
    my $count = 0;
    foreach my $e (@guess){
         if( grep{/$e/} @secret){
             if($secret[$count] eq $e ){
                 $p++;
             }else{
                 $m++;
              }
         }
        $count++;
    }
    for ( $x = 0; $x < $p; $x++) {
        push(@retval,'p');
    }
    for ( $x = 0; $x < $m; $x++) {
        push(@retval,'m');
    }
    while ( @retval < 4){
        push(@retval, ' ');
    }
    return @retval;
}
sub mark {

}
1;
__END__
