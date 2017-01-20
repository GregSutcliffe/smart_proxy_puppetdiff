require File.expand_path('../lib/smart_proxy_puppetdiff/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'smart_proxy_puppetdiff'
  s.version = Proxy::Puppetdiff::VERSION

  s.summary = 'Puppetdiff smart proxy plugin'
  s.description = 'Puppetdiffsmart proxy plugin'
  s.authors = ['Greg Sutcliffe']
  s.email = 'gwmngilfen@emeraldreverie.org'
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.files = Dir['{lib,settings.d,bundler.d}/**/*'] + s.extra_rdoc_files
  s.homepage = 'http://github.com/GregSutcliffe/smart_proxy_puppetdiff'
  s.license = 'GPLv3'
end
