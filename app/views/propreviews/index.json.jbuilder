json.array!(@propreviews) do |propreview|
  json.extract! propreview, :id, :user_id, :properity_id, :rating, :review
  json.url propreview_url(propreview, format: :json)
end
