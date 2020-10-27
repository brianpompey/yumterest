require 'test_helper'

class RecipePinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipe_pin_index_url
    assert_response :success
  end

end
