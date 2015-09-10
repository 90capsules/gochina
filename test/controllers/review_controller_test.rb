require 'test_helper'

class ReviewControllerTest < ActionController::TestCase
  test "should get write_review" do
    get :write_review
    assert_response :success
  end

  test "should get writing_review" do
    get :writing_review
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

  test "should get writing_reply" do
    get :writing_reply
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
