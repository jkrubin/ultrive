json.extract! user, :id, :name, :email, :lastname, :created_at, :updated_at
json.url user_url(user, format: :json)
