require "application_system_test_case"

class InquirydetailsTest < ApplicationSystemTestCase
  setup do
    @inquirydetail = inquirydetails(:one)
  end

  test "visiting the index" do
    visit inquirydetails_url
    assert_selector "h1", text: "Inquirydetails"
  end

  test "creating a Inquirydetail" do
    visit inquirydetails_url
    click_on "New Inquirydetail"

    fill_in "Content", with: @inquirydetail.content
    fill_in "House", with: @inquirydetail.house_id
    fill_in "Subject", with: @inquirydetail.subject
    fill_in "User", with: @inquirydetail.user_id
    click_on "Create Inquirydetail"

    assert_text "Inquirydetail was successfully created"
    click_on "Back"
  end

  test "updating a Inquirydetail" do
    visit inquirydetails_url
    click_on "Edit", match: :first

    fill_in "Content", with: @inquirydetail.content
    fill_in "House", with: @inquirydetail.house_id
    fill_in "Subject", with: @inquirydetail.subject
    fill_in "User", with: @inquirydetail.user_id
    click_on "Update Inquirydetail"

    assert_text "Inquirydetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Inquirydetail" do
    visit inquirydetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inquirydetail was successfully destroyed"
  end
end
