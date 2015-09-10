require 'test_helper'

class MypageControllerTest < ActionController::TestCase
  test "should get trace" do
    get :trace
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

  test "should get codi_account" do
    get :codi_account
    assert_response :success
  end

  test "should get savebox" do
    get :savebox
    assert_response :success
  end

  test "should get saving_box" do
    get :saving_box
    assert_response :success
  end

end
