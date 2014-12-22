# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients = %w(tomato flour corn\ syrup salt lettuce soybean\ oil
  sesame\ seed onion cheese,\ american)

def random_ingredient_value
  ((200 - 5.0) * rand() + 5).round(2)
end


ingredients.each do |ingredient_name|
  Ingredient.create(
    name: ingredient_name,
    water: random_ingredient_value,
    energy_kcal: random_ingredient_value,
    protein: random_ingredient_value,
    lipid_total: random_ingredient_value,
    ash: random_ingredient_value,
    carbohydrate: random_ingredient_value,
    fiber: random_ingredient_value,
    sugar_total: random_ingredient_value,
    calcium: random_ingredient_value,
    iron: random_ingredient_value,
    magnesium: random_ingredient_value,
    phosphorus: random_ingredient_value,
    potassium: random_ingredient_value,
    sodium: random_ingredient_value,
    zinc: random_ingredient_value,
    copper: random_ingredient_value,
    manganese: random_ingredient_value,
    selenium: random_ingredient_value,
    vitamin_c: random_ingredient_value
    )
end