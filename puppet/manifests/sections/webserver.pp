include nginx

nginx::vhost { 'wp.dev':
	docroot => '/vagrant/www/wp',
	template => 'nginx/wp.dev.erb'
}

file { '/etc/nginx/sites-enabled/default':
	ensure => absent,
	force => true,
	require => Package['nginx']
}
