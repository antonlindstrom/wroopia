# Ruby Wrapper for Loopia DNS API
#
# Author: Anton Lindström
# http://github.com/antonlindstrom
#

# Ruby libs
require 'xmlrpc/client'
require 'fileutils'
require 'yaml'
require 'pp'

# Internal
require 'lib/config'
require 'lib/base'
require 'lib/user'
require 'lib/dns'

# Loopia Module
module Loopia

  extend self

  def config
    @config ||= Loopia::Config.new
  end

  def base
    @base ||= Loopia::Base.new
  end

  def user
    @user ||= Loopia::User.new
  end

  def dns
    @dns ||= Loopia::DNS.new
  end

end

# Example
pp Loopia.dns.get_subdomains
