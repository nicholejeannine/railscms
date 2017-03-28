json.extract! album, :id, :title, :description, :cover, :user_id, :created_at, :updated_at
json.url album_url(album, format: :json)
