# Raises the Nginx open file limit so it can handle many concurrent requests
exec { 'fix--for-nginx':
  command  => 'sed -i "s/^ULIMIT=.*/ULIMIT=\"-n 4096\"/" /etc/default/nginx && service nginx restart',
  path     => '/usr/sbin:/usr/bin:/sbin:/bin',
  provider => 'shell',
}
