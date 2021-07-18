require 'test_helper'

class InquirydetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquirydetail = inquirydetails(:one)
  end

  test "should get index" do
    get inquirydetails_url
    assert_response :success
  end

  test "should get new" do
    get new_inquirydetail_url
    assert_response :success
  end

  test "should create inquirydetail" do
    assert_difference('Inquirydetail.count') do
      post inquirydetails_url, params: { inquirydetail: { content: @inquirydetail.content, house_id: @inquirydetail.house_id, subject: @inquirydetail.subject, user_id: @inquirydetail.user_id } }
    end

    assert_redirected_to inquirydetail_url(Inquirydetail.last)
  end

  test "should show inquirydetail" do
    get inquirydetail_url(@inquirydetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_inquirydetail_url(@inquirydetail)
    assert_response :success
  end

  test "should update inquirydetail" do
    patch inquirydetail_url(@inquirydetail), params: { inquirydetail: { content: @inquirydetail.content, house_id: @inquirydetail.house_id, subject: @inquirydetail.subject, user_id: @inquirydetail.user_id } }
    assert_redirected_to inquirydetail_url(@inquirydetail)
  end

  test "should destroy inquirydetail" do
    assert_difference('Inquirydetail.count', -1) do
      delete inquirydetail_url(@inquirydetail)
    end

    assert_redirected_to inquirydetails_url
  end
end
