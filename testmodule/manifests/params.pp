class testmodule::params(

  $permit_root_login = 'no',
  $tcpkeepalive = 'yes',
  $ssh_service = 'sshd'


) {
  case $::kernel {
    'Linux': {
       $ssh_packages  = ['openssh','openssh-clients','openssh-server', 'screen']
       }
  }
}
