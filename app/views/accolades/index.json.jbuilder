json.array!(@accolades) do |accolade|
  json.extract! accolade, :accolade_category_id, :description, :title, :additional_info, :link_address, :published
  json.url accolade_url(accolade, format: :json)
end
