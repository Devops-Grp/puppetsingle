class sshmulti::params {
  
   $permit_root_login = 'no'
   $ssh_users         = ['root','premkumar','tomcat','testuser']
   case $::osfamily {
        'RedHat': {
           $ssh_packages      = ['openssh','openssh-clients','openssh-server'] 
        }
        'Debian': {
            $ssh_packages      = ['openssh','openssh-clients','openssh-server'] 
        }
        default: {
          fail("${::operatingsystem} not supported") 
        }
        
    }
}
