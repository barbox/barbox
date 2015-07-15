class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.string :date
      t.string :time
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.belongs_to :user
      t.belongs_to :box

      t.timestamps null: false
    end
  end
end
