# init file for Redhat Cluster Service Installation
#
class rhcs7 (
  $usr_password   = '',
)
{

  ### Declaring calculated variables
  anchor  { 'rhcs7::start': }->
  class   { 'rhcs7::packages': }->
  class   { 'rhcs7::user': }->
  anchor  { 'rhcs7::end': }
}
