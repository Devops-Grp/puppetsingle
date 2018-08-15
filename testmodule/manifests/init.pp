# Class: testmodule
# ===========================
#
# Full description of class testmodule here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'testmodule':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class testmodule (

  $ssh_packages = $testmodule::params::ssh_packages,
  $permit_root_login = $testmodule::params::permit_root_login,
  $tcpkeepalive = $testmodule::params::tcpkeepalive

  ) inherits testmodule::params {

  include testmodule::install
  include testmodule::config
  include testmodule::service

#  anchor { 'testmodule_Starting': }
#  -> Class['testmodule::install']
#  -> Class['testmodule::config']
#  -> Class['testmodule::service'] 
#  anchor { 'testmodule_complete': }
}
