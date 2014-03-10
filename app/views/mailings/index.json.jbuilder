json.array!(@mailings) do |mailing|
  json.extract! mailing, :id, :name, :email, :allow
  json.url mailing_url(mailing, format: :json)
end
