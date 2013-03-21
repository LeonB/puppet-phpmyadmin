class phpmyadmin::config {

	php::fpm::pool { 'phpmyadmin':
		port   => 9003,
		ensure => $phpmyadmin::ensure,
		user   => 'www-data',
		group  => 'www-data',
	}

}
