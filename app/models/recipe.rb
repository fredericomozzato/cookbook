class Recipe < ApplicationRecord
  belongs_to :recipe_type
  belongs_to :user
  has_many :list_items
  validates :title, :cook_time, :ingredients, :instructions, presence: true
end
