json.array!(@supplies) do |supply|
  json.extract! supply, :id, :quantity, :date, :supplier_name, :product_name
  json.url supply_url(supply, format: :json)
end
