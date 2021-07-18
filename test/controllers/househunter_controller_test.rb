require 'test_helper'

class HousehunterControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get househunter_search_url
    assert_response :success
  end

end
