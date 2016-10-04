json.array!(@review_owners) do |review_owner|
  json.extract! review_owner, :id, :user_id, :owner_id, :review, :rating
  json.url review_owner_url(review_owner, format: :json)
end
