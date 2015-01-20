json.array!(@comes) do |come|
  json.extract! come, :id, :content, :game_id
  json.url come_url(come, format: :json)
end
