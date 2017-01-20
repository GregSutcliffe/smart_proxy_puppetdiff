# Drop this file into bundler.d/ in foreman-proxy root
gem 'smart_proxy_puppetdiff', :git => "https://github.com/GregSutcliffe/smart_proxy_puppetdiff"

group :puppetdiff do
  gem 'octocatalog-diff'
end
