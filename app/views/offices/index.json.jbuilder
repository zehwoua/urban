json.array!(@offices) do |office|
  json.extract! office, :city, :country, :address, :email, :website, :twitter, :pinterest, :mailchimp, :mixcloud
  json.url office_url(office, format: :json)
end
