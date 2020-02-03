require 'test_helper'

class ContactsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacts_user = contacts_users(:one)
  end

  test "should get index" do
    get contacts_users_url
    assert_response :success
  end

  test "should get new" do
    get new_contacts_user_url
    assert_response :success
  end

  test "should create contacts_user" do
    assert_difference('ContactsUser.count') do
      post contacts_users_url, params: { contacts_user: { contact_id: @contacts_user.contact_id, user_id: @contacts_user.user_id } }
    end

    assert_redirected_to contacts_user_url(ContactsUser.last)
  end

  test "should show contacts_user" do
    get contacts_user_url(@contacts_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacts_user_url(@contacts_user)
    assert_response :success
  end

  test "should update contacts_user" do
    patch contacts_user_url(@contacts_user), params: { contacts_user: { contact_id: @contacts_user.contact_id, user_id: @contacts_user.user_id } }
    assert_redirected_to contacts_user_url(@contacts_user)
  end

  test "should destroy contacts_user" do
    assert_difference('ContactsUser.count', -1) do
      delete contacts_user_url(@contacts_user)
    end

    assert_redirected_to contacts_users_url
  end
end
