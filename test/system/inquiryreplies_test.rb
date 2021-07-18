require "application_system_test_case"

class InquiryrepliesTest < ApplicationSystemTestCase
  setup do
    @inquiryreply = inquiryreplies(:one)
  end

  test "visiting the index" do
    visit inquiryreplies_url
    assert_selector "h1", text: "Inquiryreplies"
  end

  test "creating a Inquiryreply" do
    visit inquiryreplies_url
    click_on "New Inquiryreply"

    fill_in "Inquirydetail", with: @inquiryreply.inquirydetail_id
    fill_in "Reply", with: @inquiryreply.reply
    fill_in "User", with: @inquiryreply.user_id
    click_on "Create Inquiryreply"

    assert_text "Inquiryreply was successfully created"
    click_on "Back"
  end

  test "updating a Inquiryreply" do
    visit inquiryreplies_url
    click_on "Edit", match: :first

    fill_in "Inquirydetail", with: @inquiryreply.inquirydetail_id
    fill_in "Reply", with: @inquiryreply.reply
    fill_in "User", with: @inquiryreply.user_id
    click_on "Update Inquiryreply"

    assert_text "Inquiryreply was successfully updated"
    click_on "Back"
  end

  test "destroying a Inquiryreply" do
    visit inquiryreplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inquiryreply was successfully destroyed"
  end
end
