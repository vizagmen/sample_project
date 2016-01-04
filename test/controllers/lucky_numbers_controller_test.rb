require 'test_helper'

class LuckyNumbersControllerTest < ActionController::TestCase
  test "should get luckynumber" do
    get :luckynumber
    assert_response :success
  end

  test "should get cellnumbermatch" do
    get :cellnumbermatch
    assert_response :success
  end

  test "should get vehiclenumbermatch" do
    get :vehiclenumbermatch
    assert_response :success
  end

end
