require "application_system_test_case"

class EmailsUsersTest < ApplicationSystemTestCase
  setup do
    @emails_user = emails_users(:one)
  end

  test "visiting the index" do
    visit emails_users_url
    assert_selector "h1", text: "Emails Users"
  end

  test "creating a Emails user" do
    visit emails_users_url
    click_on "New Emails User"

    fill_in "Email", with: @emails_user.email_id
    fill_in "User", with: @emails_user.user_id
    click_on "Create Emails user"

    assert_text "Emails user was successfully created"
    click_on "Back"
  end

  test "updating a Emails user" do
    visit emails_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @emails_user.email_id
    fill_in "User", with: @emails_user.user_id
    click_on "Update Emails user"

    assert_text "Emails user was successfully updated"
    click_on "Back"
  end

  test "destroying a Emails user" do
    visit emails_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emails user was successfully destroyed"
  end
end
