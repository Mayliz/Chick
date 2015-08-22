json.array!(@ropas) do |ropa|
  json.extract! ropa, :id, :nombre, :tipo, :picture
  json.url ropa_url(ropa, format: :json)
end
