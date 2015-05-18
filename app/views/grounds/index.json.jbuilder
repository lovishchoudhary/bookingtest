json.array!(@grounds) do |ground|
  json.extract! ground, :id, :sport, :open_time, :close_time
  json.url ground_url(ground, format: :json)
end
