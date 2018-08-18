class testmodule::install inherits testmodule {

  package { $testmodule::ssh_packages:
    ensure => present,
    before => File['/var/tmp/sshconf'],
  }
}
