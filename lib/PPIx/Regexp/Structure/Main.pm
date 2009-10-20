=head1 NAME

PPIx::Regexp::Structure::Main - Represent a regular expression proper, or a substitution

=head1 SYNOPSIS

 use PPIx::Regexp::Dumper;
 PPIx::Regexp::Dumper->new( 'qr{foo}smx' )
     ->print();

=head1 INHERITANCE

C<PPIx::Regexp::Structure::Main> is a
L<PPIx::Regexp::Structure|PPIx::Regexp::Structure>.

C<PPIx::Regexp::Structure::Main> has no descendants.

=head1 DESCRIPTION

This class represents the regular expression portion of the parsed code.
If a substitution was parsed, it is also used for the replacement
string. As such it will appear as the second (and perhaps third) child
of the top-level L<PPIx::Regexp|PPIx::Regexp> object.

=head1 METHODS

This class provides the following public methods. Methods not documented
here are private, and unsupported in the sense that the author reserves
the right to change or remove them without notice.

=cut

package PPIx::Regexp::Structure::Main;

use strict;
use warnings;

use base qw{ PPIx::Regexp::Structure };

our $VERSION = '0.000_03';

=head2 interpolates

This method returns true if the regular expression or replacement
interpolates, and false otherwise. All it really does is to check
whether the ending delimiter is a single quote.

=cut

sub interpolates {
    my ( $self ) = @_;
    my $finish = $self->finish( 0 ) or return 1;
    return q<'> ne $finish->content();
}

1;

__END__

=head1 SUPPORT

Support is by the author. Please file bug reports at
L<http://rt.cpan.org>, or in electronic mail to the author.

=head1 AUTHOR

Thomas R. Wyant, III F<wyant at cpan dot org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009, Thomas R. Wyant, III

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl 5.10.0. For more details, see the full text
of the licenses in the directory LICENSES.

This program is distributed in the hope that it will be useful, but
without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.

=cut

# ex: set textwidth=72 :
