require "application_system_test_case"

class PublicsTest < ApplicationSystemTestCase
  setup do
    @public = publics(:one)
  end

  test "visiting the index" do
    visit publics_url
    assert_selector "h1", text: "Publics"
  end

  test "creating a Public" do
    visit publics_url
    click_on "New Public"

    fill_in "Author", with: @public.author_id
    fill_in "Book", with: @public.book_id
    fill_in "Name", with: @public.name
    click_on "Create Public"

    assert_text "Public was successfully created"
    click_on "Back"
  end

  test "updating a Public" do
    visit publics_url
    click_on "Edit", match: :first

    fill_in "Author", with: @public.author_id
    fill_in "Book", with: @public.book_id
    fill_in "Name", with: @public.name
    click_on "Update Public"

    assert_text "Public was successfully updated"
    click_on "Back"
  end

  test "destroying a Public" do
    visit publics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public was successfully destroyed"
  end
end
