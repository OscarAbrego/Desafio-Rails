require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get batman" do
    get :batman
    assert_response :success
  end

  test "should get superman" do
    get :superman
    assert_response :success
  end

end
