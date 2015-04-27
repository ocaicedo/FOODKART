class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.integer :number
      t.decimal :total
      t.decimal :discount
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
