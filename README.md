# Smart Proxy - Puppetdiff

This plugin adds an API to retrieve differences in Puppet catalogs via the
awesome `octocatalog-diff` [link](https://github.com/github/octocatalog-diff).
More docs to follow.

## Installation

This plugin is not yet packaged. To use it in a source install, clone the repo
and then add a file to your Smart Proxy's `bundler.d` directory like this:

```
$ cat > $proxydir/bundler.d/smart_proxy_puppetdiff.rb <<EOF
gem 'smart_proxy_puppetdiff', :path => "/path/to/smart_proxy_puppetdiff"
group :puppetdiff do
  gem 'octocatalog-diff'
end
EOF
```

This plugin also depends on having the `Puppet` feature enabled on your Proxy.

## Configuration

You can create `settings.d/puppetdiff.rb` to control some settings. See the
included example config file for options.

## Copyright

Copyright (c) 2017 The Foreman developers

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see http://www.gnu.org/licenses/.
