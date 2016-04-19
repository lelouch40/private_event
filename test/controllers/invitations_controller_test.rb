require 'test_helper'

class InvitationsControllerTest < ActionController::TestCase
  test "should get Create" do
    get :Create
    assert_response :success
  end

  test "should get Destroy" do
    get :Destroy
    assert_response :success
  end

  test "should get Delete" do
    get :Delete
    assert_response :success
  end

  test "should get New" do
    get :New
    assert_response :success
  end

end
