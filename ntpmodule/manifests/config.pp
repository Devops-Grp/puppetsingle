class ntpmodule::config inherits ntpmodule {
   file { $ntpmodule::configpath:
     ensure => file,
     content => template("ntpmodule/ntp.conf.erb"),
    }
}
