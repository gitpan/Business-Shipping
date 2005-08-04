#!/usr/bin/perl
#
# test.pl - Test script
#

use strict;

use Business::Shipping;

my $rate_request = Business::Shipping->rate_request(
    'user_id' => $ENV{ USPS_USER_ID },
    'password' => $ENV{ USPS_PASSWORD }, 
    'event_handlers' => {
        'debug3'    => 'STDERR',
        'debug'    => 'STDERR',
        'error' => 'croak',
        #'trace' => 'STDERR',
    },
    
    'from_country' => "US",
    'to_country' => "US",
    'service' => "Express",
    'from_zip' => "97214",
    'weight' => "0.75",
    'to_zip' => "98682",
    'cache' => "1",
    'shipper' => "USPS_Online",
    
    #'to_city' => 'Vancouver',
);

$rate_request->submit() or die $rate_request->user_error();

print $rate_request->total_charges() . "\n";