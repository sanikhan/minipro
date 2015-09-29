json.array!(@categories) do |category|
  json.extract! category, :id, :product_id, :product_name, :description
  json.url category_url(category, format: :json)
end
