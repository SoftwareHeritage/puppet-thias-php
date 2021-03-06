# Parameters class.
#
class php::params {
  case $::osfamily {
    'Debian': {
      $php_package_name = 'php7.1'
      $php_apc_package_name = 'php-apc'
      $common_package_name = 'php7.1-common'
      $cli_package_name = 'php7.1-cli'
      $cli_inifile = '/etc/php/7.1/cli/php.ini'
      $php_conf_dir = '/etc/php/7.1/mods-available'
      $fpm_package_name = 'php7.1-fpm'
      $fpm_service_name = 'php7.1-fpm'
      $fpm_service_restart = 'restart'
      $fpm_pool_dir = '/etc/php/7.1/fpm/pool.d'
      $fpm_conf_dir = '/etc/php/7.1/fpm'
      $fpm_error_log = '/var/log/php7.1-fpm.log'
      $fpm_pid = '/run/php/php7.1-fpm.pid'
      $httpd_package_name = 'apache2'
      $httpd_service_name = 'apache2'
      $httpd_conf_dir = '/etc/apache2/conf.d'
    }
    default: {
      $php_package_name = 'php'
      $php_apc_package_name = 'php-pecl-apc'
      $common_package_name = 'php-common'
      $cli_package_name = 'php-cli'
      $cli_inifile = '/etc/php.ini'
      $php_conf_dir = '/etc/php.d'
      $fpm_package_name = 'php-fpm'
      $fpm_service_name = 'php-fpm'
      $fpm_service_restart = 'reload'
      $fpm_pool_dir = '/etc/php-fpm.d'
      $fpm_conf_dir = '/etc'
      $fpm_error_log = '/var/log/php-fpm/error.log'
      $fpm_pid = '/var/run/php-fpm/php-fpm.pid'
      $httpd_package_name = 'httpd'
      $httpd_service_name = 'httpd'
      $httpd_conf_dir = '/etc/httpd/conf.d'
    }
  }
}
