require "application_system_test_case"

class UtablesTest < ApplicationSystemTestCase
  setup do
    @utable = utables(:one)
  end

  test "visiting the index" do
    visit utables_url
    assert_selector "h1", text: "Utables"
  end

  test "creating a Utable" do
    visit utables_url
    click_on "New Utable"

    fill_in "Address", with: @utable.address
    fill_in "Name", with: @utable.name
    fill_in "Number", with: @utable.number
    click_on "Create Utable"

    assert_text "Utable was successfully created"
    click_on "Back"
  end

  test "updating a Utable" do
    visit utables_url
    click_on "Edit", match: :first

    fill_in "Address", with: @utable.address
    fill_in "Name", with: @utable.name
    fill_in "Number", with: @utable.number
    click_on "Update Utable"

    assert_text "Utable was successfully updated"
    click_on "Back"
  end

  test "destroying a Utable" do
    visit utables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utable was successfully destroyed"
  end
end
