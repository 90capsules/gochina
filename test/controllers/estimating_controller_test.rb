require 'test_helper'

class EstimatingControllerTest < ActionController::TestCase
  test "should get requesting" do
    get :requesting
    assert_response :success
  end

  test "should get requesting_complete" do
    get :requesting_complete
    assert_response :success
  end

  test "should get manage" do
    get :manage
    assert_response :success
  end

  test "should get counsel" do
    get :counsel
    assert_response :success
  end

  test "should get couunsel_complete" do
    get :couunsel_complete
    assert_response :success
  end

  test "should get codi_index" do
    get :codi_index
    assert_response :success
  end

end
