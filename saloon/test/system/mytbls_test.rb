require "application_system_test_case"

class MytblsTest < ApplicationSystemTestCase
  setup do
    @mytbl = mytbls(:one)
  end

  test "visiting the index" do
    visit mytbls_url
    assert_selector "h1", text: "Mytbls"
  end

  test "creating a Mytbl" do
    visit mytbls_url
    click_on "New Mytbl"

    fill_in "Email", with: @mytbl.email
    fill_in "Hobby", with: @mytbl.hobby
    fill_in "Paswword", with: @mytbl.paswword
    click_on "Create Mytbl"

    assert_text "Mytbl was successfully created"
    click_on "Back"
  end

  test "updating a Mytbl" do
    visit mytbls_url
    click_on "Edit", match: :first

    fill_in "Email", with: @mytbl.email
    fill_in "Hobby", with: @mytbl.hobby
    fill_in "Paswword", with: @mytbl.paswword
    click_on "Update Mytbl"

    assert_text "Mytbl was successfully updated"
    click_on "Back"
  end

  test "destroying a Mytbl" do
    visit mytbls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mytbl was successfully destroyed"
  end
end
