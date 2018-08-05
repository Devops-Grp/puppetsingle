class tomcat_instconfig {

  package {'java':
    ensure => latest,
    }



}

include tomcat_instconfig
