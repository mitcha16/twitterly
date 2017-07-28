require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Twitterly"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Twitterly"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Twitterly"
  end

end
