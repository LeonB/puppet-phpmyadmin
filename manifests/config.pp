class phpmyadmin::config {

  # do package before config
  Class['phpmyadmin::package'] -> Class['phpmyadmin::config']

  php::fpm::pool { 'phpmyadmin':
    ensure => $phpmyadmin::ensure,
    port   => 9003,
    user   => 'www-data',
    group  => 'www-data',
  }

  nginx::vhost::snippet { 'phpmyadmin':
    ensure  => $phpmyadmin::ensure,
    vhost   => 'default',
    content => template('phpmyadmin/nginx_vhost.erb'),
  }

}
