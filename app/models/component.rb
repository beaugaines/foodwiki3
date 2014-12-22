class Component < ActiveRecord::Base
  belongs_to :product
  has_many :component_ingredients
  has_many :ingredients, through: :component_ingredients
  accepts_nested_attributes_for :component_ingredients
  UNITS = %w(grams ounces fluid\ ounces milliliters miligrams).freeze
end
