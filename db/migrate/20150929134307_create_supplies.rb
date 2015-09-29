class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.integer :quantity
      t.datetime :date
      t.string :supplier_name
      t.string :product_name

      t.timestamps null: false
    end
  end
end
