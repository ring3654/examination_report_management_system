require 'test_helper'

class EeReportSearchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ee_report_searchs_index_url
    assert_response :success
  end

  test "should get show" do
    get ee_report_searchs_show_url
    assert_response :success
  end

end
