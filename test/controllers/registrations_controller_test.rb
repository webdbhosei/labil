require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  test "should get sellect1" do
    get :sellect1
    assert_response :success
  end

  test "should get sellect2" do
    get :sellect2
    assert_response :success
  end

end
