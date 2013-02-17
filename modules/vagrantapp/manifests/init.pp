class vagrantapp {
  file {
    ["/home/vagrant/app",
    "/home/vagrant/logs",
    "/var/www/vagrant-app/",
    "/var/www/vagrant-app/current",
    "/var/www/vagrant-app/current/public",
    "/var/www/vagrant-app/shared/",
    "/var/www/vagrant-app/shared/config/"]:
    ensure => directory,
    owner => vagrant,
    group => vagrant,
    mode => 775
  }
}