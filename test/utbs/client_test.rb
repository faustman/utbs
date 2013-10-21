require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  def setup
    @client = Utbs::Client.new('www.example.com', '/')
  end

  test "client should return empty string if request timeout" do
    stub_request(:get, 'http://utbs.kiev.ua/servers/server-cache.php?host=www.example.com&uri=/').to_timeout

    assert_equal @client.get_links, ''
  end
end
