class Component < ActiveRecord::Base
  belongs_to :product
  has_many :component_ingredients
  has_many :ingredients, through: :component_ingredients
end
