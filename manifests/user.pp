# = Class: rhcs7::user
#
#
#
class rhcs7::user(
)
{

  ### Group and user creation
#  group { 'rhcs7':
#    ensure => 'present',
#    gid    => '1007',
#    system => false,
#  }

  user { 'hacluster':
    ensure           => 'present',
    require          => Package[$rhcs7::packages::rhcs7_packages],
#    comment          => 'rhcs7 User',
#    uid              => '1007',
#    gid              => 'rhcs7',
    password         => $rhcs7::usr_password,
    password_max_age => '99999',
    password_min_age => '0',
  }

}
