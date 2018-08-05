class sshdconfig {
    case $::osfamily {
        'RedHat': {
            $serviceName = 'sshd'
        }
        'Debian': {
            $serviceName = 'ssh'
        }
        default: {
           $serviceName = 'ssh'
        }
        
    }
 
    file { "/etc/ssh/sshd_config":
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
#        content => template("sshd_config.erb"),
        notify  => Service[$serviceName],
    }
 
    service { $serviceName:
        ensure => 'running',
        enable => 'true',
    }
}

include sshdconfig
