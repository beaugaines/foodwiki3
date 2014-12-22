class AddUnitAndQuantityToComponentIngredients < ActiveRecord::Migration
  def change
    add_column :component_ingredients, :unit, :string
    add_column :component_ingredients, :quantity, :decimal, precision: 8, scale: 2
  end
end
