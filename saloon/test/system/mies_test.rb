require "application_system_test_case"

class MiesTest < ApplicationSystemTestCase
  setup do
    @my = mies(:one)
  end

  test "visiting the index" do
    visit mies_url
    assert_selector "h1", text: "Mies"
  end

  test "creating a My" do
    visit mies_url
    click_on "New My"

    fill_in "Email", with: @my.email
    fill_in "Paswword", with: @my.paswword
    click_on "Create My"

    assert_text "My was successfully created"
    click_on "Back"
  end

  test "updating a My" do
    visit mies_url
    click_on "Edit", match: :first

    fill_in "Email", with: @my.email
    fill_in "Paswword", with: @my.paswword
    click_on "Update My"

    assert_text "My was successfully updated"
    click_on "Back"
  end

  test "destroying a My" do
    visit mies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My was successfully destroyed"
  end
end
