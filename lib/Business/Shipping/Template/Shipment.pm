# $Id: Shipment.pm 159 2004-09-10 03:26:14Z db-ship $
# 
# Copyright (c) 2003-2004 Kavod Technologies, Dan Browning. All rights reserved.
# This program is free software; you may redistribute it and/or modify it under
# the same terms as Perl itself. See LICENSE for more info.
# 

package Business::Shipping::Shipment::Template;

=head1 NAME

Business::Shipping::Shipment::Template

=head1 VERSION

$Rev: 159 $      $Date: 2004-09-09 20:26:14 -0700 (Thu, 09 Sep 2004) $

=head1 METHODS

=over 4

=cut

$VERSION = do { my $r = q$Rev: 159 $; $r =~ /\d+/; $&; };

use strict;
use warnings;
use base( 'Business::Shipping::Shipment' );
use Business::Shipping::Config;

use Class::MethodMaker 2.0
    [ 
      new    => [ { -hash => 1, -init => 'this_init' },  'new' ],
      array  => [ { -type => 'Business::Shipping::Package::Template' }, 'packages' ],      
      scalar => [ { -static => 1, -default => 'packages=>Business::Shipping::Package::Template' }, 'Has_a' ],
    ];

sub this_init
{
    $_[ 0 ]->shipper(      'Template' );
    return;
}

1;

__END__

=back

=head1 AUTHOR

Dan Browning E<lt>F<db@kavod.com>E<gt>, Kavod Technologies, L<http://www.kavod.com>.

=head1 COPYRIGHT AND LICENCE

Copyright (c) 2003-2004 Kavod Technologies, Dan Browning. All rights reserved.
This program is free software; you may redistribute it and/or modify it under
the same terms as Perl itself. See LICENSE for more info.

=cut