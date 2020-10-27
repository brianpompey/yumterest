require 'test_helper'

class RecipePinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_pin = recipe_pins(:one)
  end

  test "should get index" do
    get recipe_pins_url, as: :json
    assert_response :success
  end

  test "should create recipe_pin" do
    assert_difference('RecipePin.count') do
      post recipe_pins_url, params: { recipe_pin: { category: @recipe_pin.category, description: @recipe_pin.description, recipe_link: @recipe_pin.recipe_link, title: @recipe_pin.title } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_pin" do
    get recipe_pin_url(@recipe_pin), as: :json
    assert_response :success
  end

  test "should update recipe_pin" do
    patch recipe_pin_url(@recipe_pin), params: { recipe_pin: { category: @recipe_pin.category, description: @recipe_pin.description, recipe_link: @recipe_pin.recipe_link, title: @recipe_pin.title } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_pin" do
    assert_difference('RecipePin.count', -1) do
      delete recipe_pin_url(@recipe_pin), as: :json
    end

    assert_response 204
  end
end
