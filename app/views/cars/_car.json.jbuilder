json.extract! car, :id, :make, :year, :color, :owner_id, :garage_id, :created_at, :updated_at
json.url car_url(car, format: :json)