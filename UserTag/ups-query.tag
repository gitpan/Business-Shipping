ifndef USERTAG_UPS_QUERY
Variable USERTAG_UPS_QUERY     1
Message Loading [ups-query] usertag (compatiblity layer over [business-shipping])...

UserTag  ups-query  Order  mode origin zip weight country
UserTag  ups-query  addAttr
UserTag  ups-query  Routine <<EOR
# Copyright (c) 2003-2004 Kavod Technologies, Dan Browning. All rights reserved. 
# This program is free software; you may redistribute it and/or modify it under
# the same terms as Perl itself. See LICENSE for more info.
#
# $Id: ups-query.tag 160 2004-09-10 03:54:23Z db-ship $

=head1 NAME

[ups-query] usertag (compatiblity layer over [business-shipping]).

=head1 AUTHOR 

    Dan Browning <db@kavod.com>
    http://www.kavodtechnologies.com
    
=cut

sub 
{
    my( $mode, $origin, $zip, $weight, $country, $opt) = @_;
    my %opt = %$opt;
    return $Tag->business_shipping(
        mode       => 'UPS_Online',
        service    => $mode,
        weight     => $weight,
        to_zip     => $zip,
        to_country => $country,
        %opt,
    );
}

__END__

=head1 AUTHOR

Dan Browning E<lt>F<db@kavod.com>E<gt>, Kavod Technologies, L<http://www.kavod.com>.

=head1 COPYRIGHT AND LICENCE

Copyright (c) 2003-2004 Kavod Technologies, Dan Browning. All rights reserved.
This program is free software; you may redistribute it and/or modify it under
the same terms as Perl itself. See LICENSE for more info.

=cut

EOR
endif
