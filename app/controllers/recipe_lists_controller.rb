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

  private

  def recipe_list_params
    params.require(:recipe_list).permit(:name)
  end
end
