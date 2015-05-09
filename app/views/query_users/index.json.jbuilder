json.array!(@query_users) do |query_user|
  json.extract! query_user, :id, :name, :password, :email, :mobile
  json.url query_user_url(query_user, format: :json)
end
