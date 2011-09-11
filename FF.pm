package FF;
use strict;

sub new {
  my ($class, @x) = @_;
  bless \@x => $class;
}

sub new_from_real {
  my ($class, $x) = @_;
  my $n = 2;
  my @a;
  while ($x) {
    $x *= $n++;
    push @a, int($x);
    $x -= $a[-1];
  }
  return $class->new(@a);
}

sub new_from_rational {
  my ($class, $n, $d) = @_;
  my $c = 2;
  my @a;
  while ($n) {
    $n *= $c++;
    push @a, int($n/$d);
    $n %= $d;
  }
  return $class->new(@a);
}

sub expansion {
  my ($self) = @_;
  return @$self;
}

1;

