#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use Business::Shipping;

my $rate_request = Business::Shipping->rate_request( shipper => 'UPS_Offline' );

$rate_request->submit(
    from_zip    => '98682',
    from_state    => 'WA',
    event_handlers => {
        debug     => 'STDERR',
        error    => 'STDERR',
        trace    => 'STDERR',
        debug3    => 'STDERR',
    },

        shipper =>      'UPS_Offline',
        service =>      'XDM',
        to_country =>   'FX',
        weight =>       '1.5',
        to_zip =>       '17300',
        
) or die $rate_request->user_error();

print "offline = " . $rate_request->total_charges() . "\n";

