class buildtools {
  package { "bison automake":
    ensure  => latest,
    require  => Exec['apt-get update'],

  }
}