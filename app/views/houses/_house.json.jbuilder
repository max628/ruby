json.extract! house, :id, :sqft, :location, :address, :style, :floors, :price, :basement, :company_id, :user_id, :created_at, :updated_at
json.url house_url(house, format: :json)
