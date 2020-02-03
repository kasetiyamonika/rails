require 'test_helper'

class UtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utable = utables(:one)
  end

  test "should get index" do
    get utables_url
    assert_response :success
  end

  test "should get new" do
    get new_utable_url
    assert_response :success
  end

  test "should create utable" do
    assert_difference('Utable.count') do
      post utables_url, params: { utable: { address: @utable.address, name: @utable.name, number: @utable.number } }
    end

    assert_redirected_to utable_url(Utable.last)
  end

  test "should show utable" do
    get utable_url(@utable)
    assert_response :success
  end

  test "should get edit" do
    get edit_utable_url(@utable)
    assert_response :success
  end

  test "should update utable" do
    patch utable_url(@utable), params: { utable: { address: @utable.address, name: @utable.name, number: @utable.number } }
    assert_redirected_to utable_url(@utable)
  end

  test "should destroy utable" do
    assert_difference('Utable.count', -1) do
      delete utable_url(@utable)
    end

    assert_redirected_to utables_url
  end
end
