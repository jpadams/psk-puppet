node precise64 {

  package { 'git':
    ensure => "installed"
  }

  vcsrepo { "/var/www/puppet":
    ensure => latest,
    provider => git,
    source => 'https://github.com/puppetlabs/exercise-webpage',
    revision => 'master',
  }

  class { 'nginx': }
  nginx::resource::vhost { 'puppet':
  ensure      => present,
  listen_port => 8080,
  www_root    => '/var/www/puppet',
  access_log  => '/var/log/nginx/puppet_access.log',
  error_log   => '/var/log/nginx/puppet_error.log',
  }

}
