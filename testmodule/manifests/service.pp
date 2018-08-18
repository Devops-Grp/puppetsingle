class testmodule::service inherits testmodule {

  service{$testmodule::ssh_service:
    ensure => running,
    hasrestart => true,
    }
}
