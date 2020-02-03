require 'test_helper'

class MiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my = mies(:one)
  end

  test "should get index" do
    get mies_url
    assert_response :success
  end

  test "should get new" do
    get new_my_url
    assert_response :success
  end

  test "should create my" do
    assert_difference('My.count') do
      post mies_url, params: { my: { email: @my.email, paswword: @my.paswword } }
    end

    assert_redirected_to my_url(My.last)
  end

  test "should show my" do
    get my_url(@my)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_url(@my)
    assert_response :success
  end

  test "should update my" do
    patch my_url(@my), params: { my: { email: @my.email, paswword: @my.paswword } }
    assert_redirected_to my_url(@my)
  end

  test "should destroy my" do
    assert_difference('My.count', -1) do
      delete my_url(@my)
    end

    assert_redirected_to mies_url
  end
end
