require 'test_helper'

class InquiryrepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquiryreply = inquiryreplies(:one)
  end

  test "should get index" do
    get inquiryreplies_url
    assert_response :success
  end

  test "should get new" do
    get new_inquiryreply_url
    assert_response :success
  end

  test "should create inquiryreply" do
    assert_difference('Inquiryreply.count') do
      post inquiryreplies_url, params: { inquiryreply: { inquirydetail_id: @inquiryreply.inquirydetail_id, reply: @inquiryreply.reply, user_id: @inquiryreply.user_id } }
    end

    assert_redirected_to inquiryreply_url(Inquiryreply.last)
  end

  test "should show inquiryreply" do
    get inquiryreply_url(@inquiryreply)
    assert_response :success
  end

  test "should get edit" do
    get edit_inquiryreply_url(@inquiryreply)
    assert_response :success
  end

  test "should update inquiryreply" do
    patch inquiryreply_url(@inquiryreply), params: { inquiryreply: { inquirydetail_id: @inquiryreply.inquirydetail_id, reply: @inquiryreply.reply, user_id: @inquiryreply.user_id } }
    assert_redirected_to inquiryreply_url(@inquiryreply)
  end

  test "should destroy inquiryreply" do
    assert_difference('Inquiryreply.count', -1) do
      delete inquiryreply_url(@inquiryreply)
    end

    assert_redirected_to inquiryreplies_url
  end
end
