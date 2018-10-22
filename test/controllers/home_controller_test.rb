require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get retrieval_top" do
    get home_retrieval_top_url
    assert_response :success
  end

end
