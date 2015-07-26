class RemoveOrderNumberFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :order_number, :integer
  end
end
