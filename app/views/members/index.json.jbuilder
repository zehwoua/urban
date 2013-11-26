json.array!(@members) do |member|
  json.extract! member, :name, :office_id, :country_id, :position_id, :education, :bio, :email
  json.url member_url(member, format: :json)
end
