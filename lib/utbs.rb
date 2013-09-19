require 'utbs/client'
require 'utbs/helpers'

module Utbs

  mattr_accessor :charset
  self.charset = 'utf8'

  mattr_accessor :use_cache
  self.use_cache = true

  mattr_accessor :timeout
  self.timeout = 10

  mattr_accessor :ttl
  self.ttl = 3600 # Cahe Time to Live. default 1 hour

  mattr_accessor :remote_server_uri
  self.remote_server_uri = 'http://utbs.kiev.ua/servers/server-cache.php'

  class << self
    alias :use_cache? :use_cache

    def configure
      yield self
    end
  end
end

