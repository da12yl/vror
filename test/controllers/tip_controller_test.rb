require 'test_helper'

class TipControllerTest < ActionController::TestCase
  test "should get day:date" do
    get :day:date
    assert_response :success
  end

  test "should get amount:decimal" do
    get :amount:decimal
    assert_response :success
  end

end
