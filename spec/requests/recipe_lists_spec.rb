require 'rails_helper'

RSpec.describe "RecipeLists", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/recipe_lists/new"
      expect(response).to have_http_status(:success)
    end
  end

end
