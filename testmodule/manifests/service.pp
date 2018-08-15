class testmodule::service {

  service{'sshd':
    ensure => running,
    hasrestart => true,
    }
}
