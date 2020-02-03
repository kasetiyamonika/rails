require 'test_helper'

class MytblsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytbl = mytbls(:one)
  end

  test "should get index" do
    get mytbls_url
    assert_response :success
  end

  test "should get new" do
    get new_mytbl_url
    assert_response :success
  end

  test "should create mytbl" do
    assert_difference('Mytbl.count') do
      post mytbls_url, params: { mytbl: { email: @mytbl.email, hobby: @mytbl.hobby, paswword: @mytbl.paswword } }
    end

    assert_redirected_to mytbl_url(Mytbl.last)
  end

  test "should show mytbl" do
    get mytbl_url(@mytbl)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytbl_url(@mytbl)
    assert_response :success
  end

  test "should update mytbl" do
    patch mytbl_url(@mytbl), params: { mytbl: { email: @mytbl.email, hobby: @mytbl.hobby, paswword: @mytbl.paswword } }
    assert_redirected_to mytbl_url(@mytbl)
  end

  test "should destroy mytbl" do
    assert_difference('Mytbl.count', -1) do
      delete mytbl_url(@mytbl)
    end

    assert_redirected_to mytbls_url
  end
end
