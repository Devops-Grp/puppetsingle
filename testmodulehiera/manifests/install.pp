class testmodulehiera::install inherits testmodulehiera {

  package {$ssh_packages: 
    ensure => present,
    before => File['/var/tmp/sshconf'],
  }
}
