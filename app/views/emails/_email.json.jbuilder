json.extract! email, :id, :name, :email, :login, :created_at, :updated_at
json.url email_url(email, format: :json)