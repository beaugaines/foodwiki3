class ComponentIngredient < ActiveRecord::Base
  belongs_to :component
  belongs_to :ingredient
  delegate :name, to: :ingredient, prefix: true
end
