json.array!(@components) do |component|
  json.extract! component, :id, :name, :product_id
  json.url component_url(component, format: :json)
end
