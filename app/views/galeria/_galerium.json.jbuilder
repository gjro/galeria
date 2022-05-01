json.extract! galerium, :id, :name, :description, :image, :created_at, :updated_at
json.url galerium_url(galerium, format: :json)
json.image do
  json.array!(galerium.image) do |image|
    json.id image.id
    json.url url_for(image)
  end
end
