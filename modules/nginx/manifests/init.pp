class nginx {
  package {
    "nginx":
    ensure => present,
    before => File["/etc/nginx/nginx.conf"]
  }
  service {
    "nginx":
    ensure => true,
    enable => true,
    subscribe => File["/etc/nginx/nginx.conf"]
  }
  file {
    "/etc/nginx/nginx.conf":
    source => "puppet:///modules/nginx/nginx.conf",
    mode   => 644,
    owner  => root,
    group  => root;
    "/etc/nginx/sites-available/default":
    source => "puppet:///modules/nginx/sites-available/default",
    mode   => 644,
    owner  => root,
    group  => root,
    notify => Service["nginx"],
    require => Package["nginx"];
  }
}
