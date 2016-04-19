require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get New" do
    get :New
    assert_response :success
  end

  test "should get Show" do
    get :Show
    assert_response :success
  end

end

