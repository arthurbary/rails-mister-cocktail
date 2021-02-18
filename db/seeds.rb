require "json"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_hash = JSON.parse(open(url).read)
p "Creating the hash..."
# p "Destroying ingredients..."
# Ingredient.destroy_all
# p "About to seed..."
# response
ingredients_hash['drinks'].each do |info|
  ingredient = info['strIngredient1']
  p Ingredient.create(
    name: ingredient
    )
end
