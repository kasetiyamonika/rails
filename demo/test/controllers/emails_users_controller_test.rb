require 'test_helper'

class EmailsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emails_user = emails_users(:one)
  end

  test "should get index" do
    get emails_users_url
    assert_response :success
  end

  test "should get new" do
    get new_emails_user_url
    assert_response :success
  end

  test "should create emails_user" do
    assert_difference('EmailsUser.count') do
      post emails_users_url, params: { emails_user: { email_id: @emails_user.email_id, user_id: @emails_user.user_id } }
    end

    assert_redirected_to emails_user_url(EmailsUser.last)
  end

  test "should show emails_user" do
    get emails_user_url(@emails_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_emails_user_url(@emails_user)
    assert_response :success
  end

  test "should update emails_user" do
    patch emails_user_url(@emails_user), params: { emails_user: { email_id: @emails_user.email_id, user_id: @emails_user.user_id } }
    assert_redirected_to emails_user_url(@emails_user)
  end

  test "should destroy emails_user" do
    assert_difference('EmailsUser.count', -1) do
      delete emails_user_url(@emails_user)
    end

    assert_redirected_to emails_users_url
  end
end
