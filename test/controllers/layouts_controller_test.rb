require 'test_helper'

class LayoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get application" do
    get layouts_application_url
    assert_response :success
  end

end
