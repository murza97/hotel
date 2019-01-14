require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should return true" do
    assert_equal( true, MainController.truth, "Test is failure" )
  end
end
