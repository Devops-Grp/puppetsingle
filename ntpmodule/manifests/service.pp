class ntpmodule::service inherits ntpmodule {

   service{"$ntpmodule::service":
     enable => true,
     ensure => running,
   }
}
