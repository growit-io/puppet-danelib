# == Class: dalenyslib
#
class danelib {
  case $::operatingsystem {
    'Debian' : { $service_provider = 'debian' }
    'Ubuntu' : { $service_provider = 'init' }
    default  : { $service_provider = 'base' }
  }
}
# EOF
