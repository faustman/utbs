require 'test_helper'
require 'webmock/minitest'

class ApplicationTest < ActionDispatch::IntegrationTest

  test "utbs_links must anwser with html code at index page" do
    raw_html = %q{Simple html code <a href="http://example.com/">home link</a>}.html_safe
    stub_request(:get, "http://utbs.kiev.ua/servers/server-cache.php?host=www.example.com&uri=/").
      with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => raw_html, :headers => {})

    get '/'
    assert_select '.links', html: raw_html
  end

  test "utbs_link must answer another html code" do
    raw_html = %q{Another simple html code <a href="http://example.com/">home link</a>}.html_safe
    stub_request(:get, "http://utbs.kiev.ua/servers/server-cache.php?host=www.example.com&uri=/another_page").
      with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => raw_html, :headers => {})

    get '/another_page'
    assert_select '.links', html: raw_html
  end

end
