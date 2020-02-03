require "application_system_test_case"

class ArticallsTest < ApplicationSystemTestCase
  setup do
    @articall = articalls(:one)
  end

  test "visiting the index" do
    visit articalls_url
    assert_selector "h1", text: "Articalls"
  end

  test "creating a Articall" do
    visit articalls_url
    click_on "New Articall"

    fill_in "Category", with: @articall.category_id
    fill_in "Name", with: @articall.name
    click_on "Create Articall"

    assert_text "Articall was successfully created"
    click_on "Back"
  end

  test "updating a Articall" do
    visit articalls_url
    click_on "Edit", match: :first

    fill_in "Category", with: @articall.category_id
    fill_in "Name", with: @articall.name
    click_on "Update Articall"

    assert_text "Articall was successfully updated"
    click_on "Back"
  end

  test "destroying a Articall" do
    visit articalls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articall was successfully destroyed"
  end
end
