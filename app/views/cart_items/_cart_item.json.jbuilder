json.extract! cart_item, :id, :product_id, :cart_id, :price, :amount, :created_at, :created_at, :updated_at
json.url cart_item_url(cart_item, format: :json)
