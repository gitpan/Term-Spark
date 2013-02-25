package Term::Spark;

use strict;
use warnings;

our @ISA = qw();

our $VERSION = '0.01'; # VERSION

sub show_bar {
    my $num = shift;
    my $max = shift;

    my @graph  = qw{ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ };

    my $index = ( $num * ( scalar( @graph ) - 1 ) ) / $max;

    return $graph[ $index -1 ];
}

sub show_graph {
    my %args = @_;

    my $max    = $args{'max'}    || 0;
    my $values = $args{'values'} || [];

    my @list = sort { $a <=> $b } @ARGV;

    my $result = q{};

    for my $value ( @{ $values } ) {
        $result .= show_bar( $value, $max );
    }

    return $result;
}

1;

__END__

=pod

=head1 NAME

Term::Spark

=head1 SYNOPSIS

Displays beautiful graphs to use in the terminal

=head1 DESCRIPTION

=head2 METHODS

=encoding utf-8

=head1 NAME

Term::Spark - Perl extension for dispaying bars in the terminal

=head1 SEE ALSO

Vertical mode: https://github.com/LuRsT/vspark

=head1 AUTHOR

Gil Gonçalves <lurst@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Gil Gonçalves.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
