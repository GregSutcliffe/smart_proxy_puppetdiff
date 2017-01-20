module Proxy::Puppetdiff
  class NotFound < RuntimeError; end

  class Plugin < ::Proxy::Plugin
    plugin 'puppetdiff', Proxy::Puppetdiff::VERSION

    default_settings :enc              => '/etc/puppet/node.rb'
    default_settings :environments_dir => '/etc/puppet/environments'
    default_settings :facts_dir        => '/var/lib/puppet/yaml/facts'
    default_settings :puppet           => 'UNSET'

    http_rackup_path File.expand_path('puppetdiff_http_config.ru', File.expand_path('../', __FILE__))
    https_rackup_path File.expand_path('puppetdiff_http_config.ru', File.expand_path('../', __FILE__))

    requires :puppet, '>= 1.13'
  end
end
