class RecipeList < ApplicationRecord
  belongs_to :user
  has_many :recipes, through: :list_item
end
