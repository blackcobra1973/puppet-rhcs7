# init file for Redhat Cluster Service Installation
#
class rhcs7 (
  $usr_password   = '',
  $ringnumber     = '0',
  $bindnetaddr    = '192.168.1.0',
  $mcastaddr      = '239.255.1.1',
  $mcastport      = '5405',
)
{

  ### Declaring calculated variables
  anchor  { 'rhcs7::start': }->
  class   { 'rhcs7::packages': }->
  class   { 'rhcs7::user': }->
  class   { 'rhcs7::config': }->
  class   { 'rhcs7::service': }->
  anchor  { 'rhcs7::end': }
}
