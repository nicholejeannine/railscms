json.extract! photo, :id, :url, :caption, :album_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
