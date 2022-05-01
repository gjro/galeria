json.extract! galerium, :id, :title, :description, :imagens, :data_comemorativa, :created_at, :updated_at
json.url galerium_url(galerium, format: :json)
json.imagens do
  json.array!(galerium.imagens) do |imagen|
    json.id imagen.id
    json.url url_for(imagen)
  end
end
