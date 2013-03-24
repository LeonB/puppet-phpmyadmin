class phpmyadmin::config {

	php::fpm::pool { 'phpmyadmin':
		port   => 9003,
		ensure => $phpmyadmin::ensure,
		user   => 'www-data',
		group  => 'www-data',
	}

	nginx::vhost::snippet { 'phpmyadmin':
		vhost   => 'default',
		content => template('phpmyadmin/nginx_vhost.erb'),
		ensure  => $phpmyadmin::ensure
	 }

}
