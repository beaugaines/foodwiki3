class Ingredient < ActiveRecord::Base
  has_many :component_ingredients
  has_many :components, through: :component_ingredients
end
