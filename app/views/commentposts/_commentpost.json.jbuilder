json.extract! commentpost, :id, :title, :description, :created_at, :updated_at
json.url commentpost_url(commentpost, format: :json)
