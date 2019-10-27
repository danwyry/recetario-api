class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  # GET /recipes
  def index
    @recipes = Recipe.all
    json_response(@recipes)
  end

  def show
    json_response(@recipe)
  end

  def update
    @recipe.update(recipe_params)
    head :no_content
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    @recipe.
    create_ingredients
    create_steps
    json_response(@recipe, :created)
  end

  def destroy
    @recipe.destroy
  end

  def recipe_params
    params.permit(:name, :pieces)
  end

  def ingredients_params
    params[:ingredients] ||= []
    params.permit(ingredients: [ :quantity, :name, :unit ])
    params[:ingredients]
  end

  def steps_params
    params[:steps] ||= []
    params.permit( steps: [ :description ] )
    params[:steps]
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  private

  def create_ingredients
    ingredients_params.each do |raw_ingredient|
      Unit.find(raw_ingredient[:unit].to_i)
      ingredient = {
          recipe: @recipe,
          name: raw_ingredient[:name],
          unit: Unit.find(raw_ingredient[:unit].to_i),
          quantity: raw_ingredient[:quantity].to_f
      }
      Ingredient.create!(ingredient)
    end
  end

  def create_steps
    steps_params.each do |raw_step|
      step = {
          recipe: @recipe,
          description: raw_step[:description]
      }
      Step.create!(step)
    end
  end

end
