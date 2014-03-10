json.array!(@painel_mailings) do |painel_mailing|
  json.extract! painel_mailing, :id, :name, :email, :allow
  json.url painel_mailing_url(painel_mailing, format: :json)
end
