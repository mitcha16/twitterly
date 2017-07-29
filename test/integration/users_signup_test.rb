require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'Should not save invalid users' do
    post users_path, params: { user: { name:  "",
                                       email: "email@email.com",
                                       password:              "123",
                                       password_confirmation: "321" } }
    assert User.count == 0
  end

  test 'Should save valid users' do
    post users_path, params: { user: { name:  "Mitch",
                                       email: "email@email.com",
                                       password:              "password",
                                       password_confirmation: "password" } }
    assert User.count == 1
  end
end
