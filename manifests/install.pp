# == Class: icinga2::install
#
# Private class to used by this module only.
#
# === Authors
#
# Icinga Development Team <info@icinga.org>
#
class icinga2::install inherits icinga2::params {

  if $module_name != $caller_module_name {
    fail("icinga2::install is a private class of the module icinga2, you're not permitted to use it.")
  }

  package { $package:
    ensure => installed,
  }

}
