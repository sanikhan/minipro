class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :discount
      t.string :bill
      t.decimal :price

      t.timestamps null: false
    end
  end
end
