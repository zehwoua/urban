json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :project_name, :shorttext, :city, :country, :region, :year, :area, :type_id, :interior, :installation, :research, :blurb, :copy, :img_credits_name, :img_credits_link
  json.url portfolio_url(portfolio, format: :json)
end
