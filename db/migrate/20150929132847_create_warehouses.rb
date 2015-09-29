class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :location
      t.string :product_name
      t.integer :stock

      t.timestamps null: false
    end
  end
end
