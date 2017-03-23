json.extract! album, :id, :title, :description, :cover, :created_at, :updated_at
json.url album_url(album, format: :json)
