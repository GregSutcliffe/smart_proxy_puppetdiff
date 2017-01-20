require 'open3'

module Proxy::Puppetdiff
  extend ::Proxy::Util
  extend ::Proxy::Log

  class << self

    def get_diff(host,from,to)
      puppet_bin = Proxy::Puppetdiff::Plugin.settings.puppet
      puppet_bin = which('puppet') if puppet_bin == "UNSET"

      env_dir = Proxy::Puppetdiff::Plugin.settings.environments_dir

      cmd =  which("octocatalog-diff")
      cmd += " -n #{host}"
      cmd += " --bootstrapped-from-dir #{env_dir}/#{from}"
      cmd += " --bootstrapped-to-dir #{env_dir}/#{to}"
      cmd += " --fact-file #{Proxy::Puppetdiff::Plugin.settings.facts_dir}/#{host}.yaml"
      cmd += " --enc #{Proxy::Puppetdiff::Plugin.settings.enc}"
      cmd += " --no-hiera-config"
      cmd += " --puppet-binary #{puppet_bin}"
      cmd += " --display-detail-add"
      cmd += " --color"
      stdout, stderr, status = Open3.capture3(cmd)
      if [0,2].include? status.exitstatus
        return stdout
      else
	message = stderr.split("\n").select{ |l| l.include? '[Puppet Error]' }.join("\n")
	return "Exited: #{status}\n\n#{message}"
      end
    end

  end
end
