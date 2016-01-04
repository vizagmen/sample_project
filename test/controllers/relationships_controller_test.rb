require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get digital" do
    get :digital
    assert_response :success
  end

  test "should get friendship" do
    get :friendship
    assert_response :success
  end

end
