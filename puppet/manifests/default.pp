# Set global package provider
Package { provider => 'aptitude' }

include mongodb
mongodb::setup { "kardboard": }

include git
include devtools

include pythondev

import "kardboard"
class { 'kardboard':
    kbuser => 'vagrant',
    src => '/vagrant',
}
