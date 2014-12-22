class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :water, precision: 8, scale: 2
      t.decimal :energy_kcal, precision: 8, scale: 2
      t.decimal :protein, precision: 8, scale: 2
      t.decimal :lipid_total, precision: 8, scale: 2
      t.decimal :ash, precision: 8, scale: 2
      t.decimal :carbohydrate, precision: 8, scale: 2
      t.decimal :fiber, precision: 8, scale: 2
      t.decimal :sugar_total, precision: 8, scale: 2
      t.decimal :calcium, precision: 8, scale: 2
      t.decimal :iron, precision: 8, scale: 2
      t.decimal :magnesium, precision: 8, scale: 2
      t.decimal :phosphorus, precision: 8, scale: 2
      t.decimal :potassium, precision: 8, scale: 2
      t.decimal :sodium, precision: 8, scale: 2
      t.decimal :zinc, precision: 8, scale: 2
      t.decimal :copper, precision: 8, scale: 2
      t.decimal :manganese, precision: 8, scale: 2
      t.decimal :selenium, precision: 8, scale: 2
      t.decimal :vitamin_c, precision: 8, scale: 2

      t.timestamps
    end
  end
end
