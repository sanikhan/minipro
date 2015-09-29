json.array!(@warehouses) do |warehouse|
  json.extract! warehouse, :id, :name, :location, :product_name, :stock
  json.url warehouse_url(warehouse, format: :json)
end
