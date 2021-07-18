require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should not save user without email" do
    user = User.new
    user.email = ""
    assert_not user.save
  end

  test "should not save user with invalid email" do
    user = User.new
    user.name = "xyz"
    user.email = "xyz.com"
    user.password = "password"
    assert_not user.save
  end
end
