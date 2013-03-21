class phpmyadmin::package {

	package  { $phpmyadmin::package_name:
		ensure => $phpmyadmin::ensure
	}
}
