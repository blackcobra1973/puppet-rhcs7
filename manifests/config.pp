# = Class: rhcs7::config
#
# Install configuration files
#
class rhcs7::config(
)
{
  file { 'corosync.conf':
    ensure  => file,
    path    => '/etc/corosync/corosync.conf',
    content => template('rhcs7/corosync.conf.erb'),
    replace => false,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    require => Package[$rhcs7::packages::rhcs7_packages],
  }
}
