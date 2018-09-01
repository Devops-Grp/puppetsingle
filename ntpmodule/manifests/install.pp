class ntpmodule::install inherits ntpmodule {

  package{"$ntpmodule::pkg":
    ensure => present,
  }
}
