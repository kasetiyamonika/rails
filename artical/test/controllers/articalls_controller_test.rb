require 'test_helper'

class ArticallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articall = articalls(:one)
  end

  test "should get index" do
    get articalls_url
    assert_response :success
  end

  test "should get new" do
    get new_articall_url
    assert_response :success
  end

  test "should create articall" do
    assert_difference('Articall.count') do
      post articalls_url, params: { articall: { category_id: @articall.category_id, name: @articall.name } }
    end

    assert_redirected_to articall_url(Articall.last)
  end

  test "should show articall" do
    get articall_url(@articall)
    assert_response :success
  end

  test "should get edit" do
    get edit_articall_url(@articall)
    assert_response :success
  end

  test "should update articall" do
    patch articall_url(@articall), params: { articall: { category_id: @articall.category_id, name: @articall.name } }
    assert_redirected_to articall_url(@articall)
  end

  test "should destroy articall" do
    assert_difference('Articall.count', -1) do
      delete articall_url(@articall)
    end

    assert_redirected_to articalls_url
  end
end
