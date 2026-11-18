# Fixes the typo (phpp -> php) in wp-settings.php that causes Apache to return a 500 error
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/bin:/usr/bin',
}
