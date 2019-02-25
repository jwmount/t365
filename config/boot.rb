ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.

 # X is the major version, Y is the minor version, and Z is the patch 
# ENV['VERSION'] = "v2.0.1.0, on 5.2.2@r2.4.1  &copy Copyright John W. Mount, 2010- 2019. "



ENV['LICENSEE'] = "General Demo Service"
