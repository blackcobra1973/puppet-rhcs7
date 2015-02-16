# = Class: rhcs7::packages
#
# - Install required packages
#
class rhcs7::packages(
)
{

  $rhcs7_packages = [ 'pcs',
                      'fence-agents-all',
                      ]


  ### Default Packages to install
  package { $rhcs7_packages:
    ensure => installed,
  }

}
