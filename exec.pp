class exec_class {

  exec { "check_output":
    path     => '/usr/bin:/usr/sbin:/bin',
    provider => shell,
    command => 'df -h',
     }

  package { "strace":
    ensure => present,
    require => Exec["check_output"] 
    }

}

include exec_class
