class testmodule::params(

  $permit_root_login = 'no',
  $tcpkeepalive = 'yes'


) {
  case $::kernel {
    'Linux': {
       $ssh_packages  = ['openssh','openssh-clients','openssh-server', 'screen']
       }
  }
}
