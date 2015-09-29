class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.datetime :date
      t.string :customer_name
      t.string :product_name

      t.timestamps null: false
    end
  end
end
