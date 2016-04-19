require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get New" do
    get :New
    assert_response :success
  end

  test "should get Show" do
    get :Show
    assert_response :success
  end

end
