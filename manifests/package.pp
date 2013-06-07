class phpmyadmin::package {

  package  { $phpmyadmin::package_name:
    ensure  => $phpmyadmin::ensure,
    require => Class['php'], # don't let dpkg decide which php is installed
  }
}
