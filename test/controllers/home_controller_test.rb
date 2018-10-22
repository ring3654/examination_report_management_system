require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get report_top" do
    get home_report_top_url
    assert_response :success
  end

end
