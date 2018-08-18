class testmodulehiera::service inherits testmodulehiera {

  service{ "$ssh_service":
    ensure => running,
    hasrestart => true,
    }
}
