require 'smart_proxy_puppetdiff/puppetdiff_api'

map '/puppetdiff' do
  run Proxy::Puppetdiff::Api
end
