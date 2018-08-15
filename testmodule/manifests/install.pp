class testmodule::install {

  package { $testmodule::ssh_packages:
    ensure => present,
    before => File['/var/tmp/sshconf'],
  }
}
