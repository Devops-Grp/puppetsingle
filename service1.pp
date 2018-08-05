class sshdconfig {
    case $::osfamily {
        'RedHat': {
            $serviceName = 'sshd'
            $servicefile = '/etc/ssh/sshd_config'
        }
        'Debian': {
            $serviceName = 'ssh'
            $servicefile = '/etc/ssh/sshd_config'
        }
        default: {
           $serviceName = 'ssh'
           $servicefile = '/etc/ssh/sshd_config'
        }
        
    }
 
    file { "$servicefile":
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
#        content => template("sshd_config.erb"),
    }
 
    service { $serviceName:
        ensure => 'running',
        enable => 'true',
        required => File['$servicefile]
    }
}

include sshdconfig
