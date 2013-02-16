class vagrantapp {
  file {
    ["/var/vagrant-app/",
    "/var/vagrant-app/current",
    "/var/vagrant-app/current/public",
    "/var/vagrant-app/shared/",
    "/var/vagrant-app/shared/config/"]:
    ensure => directory,
    owner => vagrant,
    group => vagrant,
    mode => 775
  }
}