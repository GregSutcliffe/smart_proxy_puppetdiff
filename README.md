# Smart Proxy - Puppetdiff

This plugin adds an API to retrieve differences in Puppet catalogs via the
awesome [`octocatalog-diff`](https://github.com/github/octocatalog-diff).

More docs to follow.

## Installation

This plugin is not yet packaged. To use it in a source install, drop the
[example bundler file](/bundler.d/puppetdiff.rb) into the `bundler.d` directory
in your smart-proxy.

This plugin also depends on having the `Puppet` feature enabled on your Proxy.

## Configuration

You can create `settings.d/puppetdiff.rb` to control some settings. See the
[included example config](/settings.d/puppetdiff.yml.example) file for options.

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
