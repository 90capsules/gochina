require 'test_helper'

class EstimateControllerTest < ActionController::TestCase
  test "should get request" do
    get :request
    assert_response :success
  end

end
