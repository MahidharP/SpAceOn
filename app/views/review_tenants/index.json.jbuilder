json.array!(@review_tenants) do |review_tenant|
  json.extract! review_tenant, :id, :user_id, :tenant_id, :review, :rating
  json.url review_tenant_url(review_tenant, format: :json)
end
