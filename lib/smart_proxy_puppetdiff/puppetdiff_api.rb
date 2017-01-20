require 'sinatra'
require 'smart_proxy_puppetdiff/puppetdiff'
require 'smart_proxy_puppetdiff/puppetdiff_main'

module Proxy::Puppetdiff
  class Error < RuntimeError; end

  class Api < ::Sinatra::Base
    include ::Proxy::Log
    helpers ::Proxy::Helpers

    get '/:host/:from/:to' do
      begin
        #  content_type :json
        host = params[:host]
	from = params[:from]
	to   = params[:to]

	raise Proxy::Puppetdiff::Error.new("Invalid host '#{host}'") unless host =~ /^([a-zA-Z0-9]([-a-zA-Z0-9]+)?\.?)+$/
	raise Proxy::Puppetdiff::Error.new("Invalid :from environment '#{from}'") unless from =~ /^([a-zA-Z0-9]([-a-zA-Z0-9]+)?)+$/
	raise Proxy::Puppetdiff::Error.new("Invalid :to environment '#{to}'") unless to =~ /^([a-zA-Z0-9]([-a-zA-Z0-9]+)?)+$/

        Proxy::Puppetdiff.get_diff(host, from, to)
      rescue => e
        log_halt 400, e
      end
    end
  end
end
