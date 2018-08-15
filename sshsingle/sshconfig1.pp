class ssh_validation {
  $ssh_packages      = ['openssh','openssh-clients','openssh-server']
  $permit_root_login = 'no'
  $tcpkeepalive = 'yes'

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


  file_line{'/etc/ssh/sshd_config':
    ensure => present,
    path => '/etc/ssh/sshd_config',
    line => 'TCPKeepAlive yes",
    match => '^#TCPKeepAlive',
    }

  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

include ssh_validation
file_line { "XScreenSaver":
      ensure   => present,
      path     => '/root/XScreenSaver',
      line     => "*lock: 10:00:00",
      match    => '^*lock:',
      encoding => "iso-8859-1",
    }

