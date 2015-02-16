# = Class: rhcs7::user
#
#
#
class rhcs7::user(
)
{
  user { 'hacluster':
    ensure           => 'present',
    require          => Package[$rhcs7::packages::rhcs7_packages],
    password         => $rhcs7::usr_password,
    password_max_age => '99999',
    password_min_age => '0',
  }
}
