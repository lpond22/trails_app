json.array!(@trails) do |trail|
  json.extract! trail, :id, :name, :length, :diffculty, :rating
  json.url trail_url(trail, format: :json)
end
