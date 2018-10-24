require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get welcome_login_url
    assert_response :success
  end

  test "should get check" do
    get welcome_check_url
    assert_response :success
  end

  test "should get destroy" do
    get welcome_destroy_url
    assert_response :success
  end

end
