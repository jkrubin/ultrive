json.extract! cart, :id, :price, :float, :created_at, :updated_at
json.url cart_url(cart, format: :json)
