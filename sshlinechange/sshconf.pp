class ssh_validation {
  $ssh_packages      = ['openssh','openssh-clients','openssh-server']
  $permit_root_login = 'no'
  $tcpkeepalive = 'yes'

  package { $ssh_packages:
    ensure => present,
    before => File['/var/tmp/sshconf'],
  }


  file {'/var/tmp/sshconf':
    ensure => present,
    content => template('/root/Devops/puppetsingle/sshlinechange/sshconf.erb'),
    notify => Service['sshd'],
    }

  service{'sshd':
    ensure => running,
    hasrestart => true,
    }
}

include ssh_validation
