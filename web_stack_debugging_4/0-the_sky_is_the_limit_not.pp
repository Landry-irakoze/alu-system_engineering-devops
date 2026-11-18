   # Raises the Nginx open file limit so it can handle many concurrent requests
   exec { 'fix--for-nginx':
     command => 'sed -i "s/^ULIMIT=.*/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
     path    => '/bin:/usr/bin',
     notify  => Exec['restart-nginx'],
   }

   exec { 'restart-nginx':
     command     => 'service nginx restart',
     path        => '/usr/sbin:/usr/bin:/sbin:/bin',
     refreshonly => true,
   }
   EOF
# Raises the Nginx open file limit so it can
handle many concurrent requests
exec { 'fix--for-nginx':
command => 'sed -i "s/^ULIMIT=.*
ULIMIT=\"-n 4096\"/" /etc/default/nginx',
path    => '/bin:/usr/bin',
notify  => Exec['restart-nginx'],
}
exec { 'restart-nginx':
command     => 'service nginx restart',
path        => '/usr/sbin:/usr/bin:/sbin:/bin',
 refreshonly => true,
}
