class ssh_validation {
  $ssh_packages      = ['openssh','openssh-clients','openssh-server']
  $permit_root_login = 'no'
  $ssh_users         = ['root','premkumar','tomcat','testuser']

  package { $ssh_packages:
    ensure => present,
    before => File['/etc/ssh/sshd_config'],
  }

  file { '/etc/ssh/sshd_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    # Template uses $permit_root_login and $ssh_users
    content => template('/root/Devops/puppetsingle/sshsingle/sshd_config.erb'),
  }

  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

include ssh_validation
