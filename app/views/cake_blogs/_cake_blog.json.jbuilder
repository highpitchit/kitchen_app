json.extract! cake_blog, :id, :title, :user_id, :body, :created_at, :updated_at
json.url cake_blog_url(cake_blog, format: :json)
