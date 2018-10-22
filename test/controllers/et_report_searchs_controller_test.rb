require 'test_helper'

class EtReportSearchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get et_report_searchs_index_url
    assert_response :success
  end

  test "should get show" do
    get et_report_searchs_show_url
    assert_response :success
  end

end
