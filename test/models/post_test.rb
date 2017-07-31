require 'test_helper'

class PostTest < ActionController::TestCase

  def setup
    @user = User.create(name: "Mitch", email: "mitch@ashby.com", password: "123", password_confirmation: "123")
    @post = Post.new(content: "Hey", user_id: @user.id)
  end

  test "belong to a user" do
    assert @post.user
  end
end
