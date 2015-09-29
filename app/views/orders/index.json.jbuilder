json.array!(@orders) do |order|
  json.extract! order, :id, :quantity, :date, :customer_name, :product_name
  json.url order_url(order, format: :json)
end
