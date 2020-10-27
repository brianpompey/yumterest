require 'test_helper'

class ReciperPinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reciper_pins_index_url
    assert_response :success
  end

  test "should get new" do
    get reciper_pins_new_url
    assert_response :success
  end

  test "should get create" do
    get reciper_pins_create_url
    assert_response :success
  end

  test "should get edit" do
    get reciper_pins_edit_url
    assert_response :success
  end

  test "should get update" do
    get reciper_pins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reciper_pins_destroy_url
    assert_response :success
  end

end
