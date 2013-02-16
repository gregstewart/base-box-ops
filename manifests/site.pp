Exec {
  path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
}
include nginx
include vagrantapp
class { 'postgresql::server': }

postgresql::db{ 'vagrantapp':
  user          => 'vagrant',
  password      => 'vagrant',
  grant         => 'all',
}

