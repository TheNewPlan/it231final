require 'test_helper'

class BrowseControllerTest < ActionDispatch::IntegrationTest
  test "should get browse" do
    get browse_browse_url
    assert_response :success
  end

end
