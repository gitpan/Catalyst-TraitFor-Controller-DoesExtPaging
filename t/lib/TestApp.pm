package TestApp;
our $VERSION = '0.093370';

use strict;
use warnings;

use Catalyst::Runtime 5.80;

use parent qw/Catalyst/;
use Catalyst;

__PACKAGE__->config(
   name => 'TestApp',
   default_view => 'JSON',
   'View::JSON' => {
       expose_stash    => 'js',
    },
    'Controller::Root' => {
      total_property => 'totalAmount',
    },
);

# Start the application
__PACKAGE__->setup();

1;
