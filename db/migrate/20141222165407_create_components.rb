class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
