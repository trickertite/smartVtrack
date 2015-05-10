json.array!(@share_users) do |share_user|
  json.extract! share_user, :id, :driver
  json.url share_user_url(share_user, format: :json)
end
