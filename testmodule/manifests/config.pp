class testmodule::config inherits testmodule {

  file {'/var/tmp/sshconf':
    ensure => present,
    content => template("testmodule/sshconf.erb"),
    notify => Service['sshd'],
    }
}
