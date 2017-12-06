# Class: nassh::config
#
class ssh::config {
  # resources
  file { '/etc/ssh/sshd_config':
    ensure => 'file',
    mode => '0600',
    owner => 'root',
    group => 'root',
    source => 'puppet:///modules/ssh/manifests/files/sshd_config'
  }
}
