#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use Business::Shipping;

my $rate_request = Business::Shipping->rate_request( shipper => 'UPS_Offline' );

$rate_request->submit(
        from_country => 'US',
        from_state   => 'WA',
        from_city    => 'Vancouver',
        from_zip     => '98682',
        
        to_country   => 'FX',
        to_zip       => '69100',
        
        service      => 'XPD',
        weight       => '1.5',
        
                               shipper         => 'UPS_Online',
                       from_canada     => 'CA',
                       from_country    => 'CA',
                       from_zip        => 'v6h3y8',
                       to_country      => 'US',
                       to_zip          => '99663',
                       weight          =>  5.00,
                       user_id         => 'userid',
                       password        => 'pass',
                       service         => 'XPD',
                       access_key       => 'XXXXXX',
        
) or die $rate_request->user_error();

print "offline = " . $rate_request->total_charges() . "\n";

