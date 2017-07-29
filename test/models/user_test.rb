require 'test_helper'

class UserTest < ActionController::TestCase

  def setup
    @user = User.new(name: "Mitch", email: "mitch@ashby.com", password: "123", password_confirmation: "123")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "cannot sign up twice" do
    invalid = @user.dup
    @user.save
    assert_not invalid.valid?
  end

  test "email should not be blank" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should not be blank" do
    @user.name = " "
    assert_not @user.valid?
  end

end
