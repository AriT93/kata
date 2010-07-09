package CodeBreaker;
use strict;
require Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

sub secret {
    my($self, $secret) = @_;
    if (defined($secret)){
        $self->{_secret} = $secret;
        return $self->{_secret};
    }else{
        return $self->{_secret};
    }
}
sub new(){
    my $class = shift;

    return bless({}, $class);
}
sub guess() {
    return [4,0];
}
sub mark {

}
1;
__END__
