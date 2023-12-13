require "rails_helper"

feature "Usuário cria uma lista de receita" do
  scenario "com sucesso" do
    user = User.create!(email: "user@email.com",password: "123456")
    recipe_type = RecipeType.create!(name: "Type")
    recipe_1 = Recipe.create!(
      title: "Receita 1",
      cook_time: 10,
      recipe_type: recipe_type,
      ingredients: "ingrediente1, ingrediente2, ingrediente 3",
      instructions: "Cozinhe tudo",
      user: user
    )
    recipe_2 = Recipe.create!(
      title: "Receita 2",
      cook_time: 20,
      recipe_type: recipe_type,
      ingredients: "ingrediente4, ingrediente5, ingrediente6",
      instructions: "Cozinhe tudo",
      user: user
    )

    login_as user, scope: :user
    visit root_path
    click_on "Minhas Listas"
    click_on "Nova lista"
    fill_in "Nome", with: "Lista Teste"
    click_on "Criar lista"

    expect(page).to have_content "Lista Teste"
  end
end
