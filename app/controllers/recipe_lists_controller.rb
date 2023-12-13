class RecipeListsController < ApplicationController
  def index
    @recipe_lists = current_user.recipe_lists
  end

  def new
    @recipe_list = RecipeList.new
  end

  def create
    @recipe_list = current_user.recipe_lists.build(recipe_list_params)
    @recipe_list.save
    redirect_to recipe_lists_path, notice: "Lista criada com sucesso"
  end

  def update

  end

  def add_recipe
    # debugger
    @recipe_list = RecipeList.find(params[:recipe_list])
    recipe = Recipe.find(params[:id])
    @recipe_list.recipes << recipe
    @recipe_list.save
  end

  private

  def recipe_list_params
    params.require(:recipe_list).permit(:name)
  end
end
