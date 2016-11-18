json.extract! owner, :id, :full_name, :email, :password, :phone, :created_at, :updated_at
json.url owner_url(owner, format: :json)