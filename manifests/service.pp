# = Class: rhcs7::service
#
# Create rhcs7 Services
#
class rhcs7::service
{

  #### Enable the services
  service { 'pcsd':
    ensure  => running,
    enable  => true,
    require => Package[$rhcs7::packages::rhcs7_packages],
  }

  service { 'corosync':
    ensure  => running,
    enable  => true,
    require => Package[$rhcs7::packages::rhcs7_packages],
  }

  service { 'pacemaker':
    ensure  => running,
    enable  => true,
    require => Package[$rhcs7::packages::rhcs7_packages],
  }

}
