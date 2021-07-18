require "application_system_test_case"

class PotentialbuyersTest < ApplicationSystemTestCase
  setup do
    @potentialbuyer = potentialbuyers(:one)
  end

  test "visiting the index" do
    visit potentialbuyers_url
    assert_selector "h1", text: "Potentialbuyers"
  end

  test "creating a Potentialbuyer" do
    visit potentialbuyers_url
    click_on "New Potentialbuyer"

    fill_in "House", with: @potentialbuyer.house_id
    fill_in "User", with: @potentialbuyer.user_id
    click_on "Create Potentialbuyer"

    assert_text "Potentialbuyer was successfully created"
    click_on "Back"
  end

  test "updating a Potentialbuyer" do
    visit potentialbuyers_url
    click_on "Edit", match: :first

    fill_in "House", with: @potentialbuyer.house_id
    fill_in "User", with: @potentialbuyer.user_id
    click_on "Update Potentialbuyer"

    assert_text "Potentialbuyer was successfully updated"
    click_on "Back"
  end

  test "destroying a Potentialbuyer" do
    visit potentialbuyers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Potentialbuyer was successfully destroyed"
  end
end
