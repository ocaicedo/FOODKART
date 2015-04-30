class RemoveNumberFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :number, :integer
  end
end
