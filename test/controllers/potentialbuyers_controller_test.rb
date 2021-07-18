require 'test_helper'

class PotentialbuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potentialbuyer = potentialbuyers(:one)
  end

  test "should get index" do
    get potentialbuyers_url
    assert_response :success
  end

  test "should get new" do
    get new_potentialbuyer_url
    assert_response :success
  end

  test "should create potentialbuyer" do
    assert_difference('Potentialbuyer.count') do
      post potentialbuyers_url, params: { potentialbuyer: { house_id: @potentialbuyer.house_id, user_id: @potentialbuyer.user_id } }
    end

    assert_redirected_to potentialbuyer_url(Potentialbuyer.last)
  end

  test "should show potentialbuyer" do
    get potentialbuyer_url(@potentialbuyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_potentialbuyer_url(@potentialbuyer)
    assert_response :success
  end

  test "should update potentialbuyer" do
    patch potentialbuyer_url(@potentialbuyer), params: { potentialbuyer: { house_id: @potentialbuyer.house_id, user_id: @potentialbuyer.user_id } }
    assert_redirected_to potentialbuyer_url(@potentialbuyer)
  end

  test "should destroy potentialbuyer" do
    assert_difference('Potentialbuyer.count', -1) do
      delete potentialbuyer_url(@potentialbuyer)
    end

    assert_redirected_to potentialbuyers_url
  end
end
