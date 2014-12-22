class CreateComponentIngredients < ActiveRecord::Migration
  def change
    create_table :component_ingredients do |t|
      t.belongs_to :component, index: true
      t.belongs_to :ingredient, index: true

      t.timestamps
    end
  end
end
