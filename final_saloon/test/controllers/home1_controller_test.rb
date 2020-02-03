require 'test_helper'

class Home1ControllerTest < ActionDispatch::IntegrationTest
  test "should get service" do
    get home1_service_url
    assert_response :success
  end

end
