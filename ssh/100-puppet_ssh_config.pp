# Configure the SSH client to use ~/.ssh/school and refuse password auth
file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  match   => '^\s*#?\s*PasswordAuthentication',
  replace => true,
}

file_line { 'Declare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
