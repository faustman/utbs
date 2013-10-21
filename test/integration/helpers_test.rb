require 'test_helper'

class HelpersTest < ActionView::TestCase
  test "have utbs_links helper" do
    assert_respond_to view, :utbs_links, "Wooops. Rails cant't see the helper"
  end
end

