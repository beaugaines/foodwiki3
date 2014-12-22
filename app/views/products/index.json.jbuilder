json.array!(@products) do |product|
  json.extract! product, :id, :company_id, :name
  json.url product_url(product, format: :json)
end
