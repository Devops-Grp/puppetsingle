class testmodulehiera::config inherits testmodulehiera {

  file {'/var/tmp/sshconf':
    ensure => present,
    content => template("testmodulehiera/sshconf.erb"),
    notify => Service['sshd'],
    }
}
