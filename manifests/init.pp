# == Class: dalenyslib
#
class dalenyslib {
  case $::operatingsystem {
    'Debian': {
      $service_provider = 'debian'
    }
    'Ubuntu': {
      $service_provider = 'init'
    }
    'default': {
      $service_provider = 'base'
    }
  }
}
# EOF
