require "application_system_test_case"

class ContactsUsersTest < ApplicationSystemTestCase
  setup do
    @contacts_user = contacts_users(:one)
  end

  test "visiting the index" do
    visit contacts_users_url
    assert_selector "h1", text: "Contacts Users"
  end

  test "creating a Contacts user" do
    visit contacts_users_url
    click_on "New Contacts User"

    fill_in "Contact", with: @contacts_user.contact_id
    fill_in "User", with: @contacts_user.user_id
    click_on "Create Contacts user"

    assert_text "Contacts user was successfully created"
    click_on "Back"
  end

  test "updating a Contacts user" do
    visit contacts_users_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @contacts_user.contact_id
    fill_in "User", with: @contacts_user.user_id
    click_on "Update Contacts user"

    assert_text "Contacts user was successfully updated"
    click_on "Back"
  end

  test "destroying a Contacts user" do
    visit contacts_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contacts user was successfully destroyed"
  end
end
