class RecipePinsController < ApplicationController
  before_action :set_recipe_pin, only: [:show, :update, :destroy]

  # GET /recipe_pins
  def index
    @recipe_pins = RecipePin.all

    render json: @recipe_pins.with_attached_image
  end

  # GET /recipe_pins/1
  def show
    render json: @recipe_pin.with_attached_image
  end

  # POST /recipe_pins
  def create
    @recipe_pin = RecipePin.new(recipe_pin_params)

    if @recipe_pin.save
      render json: @recipe_pin.with_attached_image, status: :created, location: @recipe_pin
    else
      render json: @recipe_pin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_pins/1
  def update
    if @recipe_pin.update(recipe_pin_params)
      render json: @recipe_pin.with_attached_image
    else
      render json: @recipe_pin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_pins/1
  def destroy
    @recipe_pin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_pin
      @recipe_pin = RecipePin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_pin_params
      params.require(:recipe_pin).permit(:title, :description, :category, :recipe_link)
    end
end
