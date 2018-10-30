require 'test_helper'

class UnapprovedReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unapproved_reports_index_url
    assert_response :success
  end

  test "should get show" do
    get unapproved_reports_show_url
    assert_response :success
  end

end
