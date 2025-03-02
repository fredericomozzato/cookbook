Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :recipe_types, only: %i[new create index show]
  resources :recipes, only: %i[new create edit update show]
  resources :recipe_lists, only: %i[index new create update] do
    put "add_recipe", on: :member
  end
end
