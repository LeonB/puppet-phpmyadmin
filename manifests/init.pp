class phpmyadmin(
	$package_name = params_lookup( 'package_name' ),
	$enabled       = params_lookup( 'enabled' )
  ) inherits phpmyadmin::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include phpmyadmin::package, phpmyadmin::config
}
