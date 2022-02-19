json.extract! review, :id, :body, :restaurant_id, :created_at, :updated_at
json.url review_url(review, format: :json)
