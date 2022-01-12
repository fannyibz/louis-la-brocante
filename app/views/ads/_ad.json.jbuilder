json.extract! ad, :id, :name, :description, :price, :user_id, :created_at, :updated_at
json.url ad_url(ad, format: :json)
