=head1 NAME

Business::Shipping::Template::Package

=head1 VERSION

$Rev: 184 $      $Date: 2004-09-16 19:34:19 -0700 (Thu, 16 Sep 2004) $

=head1 METHODS

=cut

package Business::Shipping::Template::Package;

$VERSION = do { my $r = q$Rev: 184 $; $r =~ /\d+/; $&; };

use strict;
use warnings;
use base ( 'Business::Shipping::Package' );

use Class::MethodMaker 2.0
    [ 
      new    => [ qw/ -hash new / ],
    ];

1;

__END__

=head1 AUTHOR

Dan Browning E<lt>F<db@kavod.com>E<gt>, Kavod Technologies, L<http://www.kavod.com>.

=head1 COPYRIGHT AND LICENCE

Copyright (c) 2003-2004 Kavod Technologies, Dan Browning. All rights reserved.
This program is free software; you may redistribute it and/or modify it under
the same terms as Perl itself. See LICENSE for more info.

=cut
