require 'test_helper'

class FavdatesControllerTest < ActionController::TestCase
  test "should get getfavs" do
    get :getfavs
    assert_response :success
  end

end
