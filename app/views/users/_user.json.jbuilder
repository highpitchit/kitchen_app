json.extract! user, :id, :name, :cake_flavour, :experience, :created_at, :updated_at
json.url user_url(user, format: :json)
