json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :customer_name, :supplier_name, :supply_quantity, :order_quantity
  json.url product_url(product, format: :json)
end
