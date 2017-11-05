class ssh::install(
    $package_name = $::ssh::params::package_name,
    $service_name = $::ssh::params::service_name,
) {
    package {'ssh-package':
      ensure => present,
      name   => $package_name,
    }
}
