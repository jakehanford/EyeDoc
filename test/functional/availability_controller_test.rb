require 'test_helper'

class AvailabilityControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get schedule" do
    get :schedule
    assert_response :success
  end

end
