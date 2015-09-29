class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :customer_name
      t.string :supplier_name
      t.integer :supply_quantity
      t.integer :order_quantity

      t.timestamps null: false
    end
  end
end
