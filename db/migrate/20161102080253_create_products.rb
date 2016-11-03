class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.boolean :is_food, default: true
      t.float :price
      t.float :rating
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
