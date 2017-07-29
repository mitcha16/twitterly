require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "should go to login page" do
    get login_path
    assert_response :success
  end
end
