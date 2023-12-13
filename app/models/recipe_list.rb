class RecipeList < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :recipes, through: :list_items
end
