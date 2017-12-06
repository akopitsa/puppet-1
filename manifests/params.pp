class ssh::params {
  #case $facts['os']['family'] {
  case $facts['operatingsystem'] {
    'Debian','Ubuntu': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
    }
    /^RedHat|CentOS/: {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
      notify {"${1} is our operating system. And ${0}": }
    }
    default: {
      fail("${facts[::operatingsystem]} is not supporting !")
    }
  }
}
