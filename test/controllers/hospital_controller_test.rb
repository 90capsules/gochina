require 'test_helper'

class HospitalControllerTest < ActionController::TestCase
  test "should get inex" do
    get :inex
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

end
