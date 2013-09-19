require 'net/http'

module Utbs
  class Client
    include Utbs

    attr_accessor :host, :path

    def initialize(host, path)
      @host, @path = host, path
    end

    def get_links
      uri = URI.parse(remote_server_uri)
      uri.query = URI.encode_www_form host: host, uri: path

      Net::HTTP.get(uri).encode('UTF-8', 'CP1251')
    end
  end
end
