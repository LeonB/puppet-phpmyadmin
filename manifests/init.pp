class phpmyadmin(
  $package_name = params_lookup( 'package_name' ),
  $enabled       = params_lookup( 'enabled' )
  ) inherits phpmyadmin::params {

  # install php before phpmyadmin
  Class['php'] -> Class['phpmyadmin']

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include phpmyadmin::package, phpmyadmin::config
}
