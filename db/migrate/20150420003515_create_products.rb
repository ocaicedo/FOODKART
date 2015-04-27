class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :category_id
      t.decimal :tax
      t.string :imgsource
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
