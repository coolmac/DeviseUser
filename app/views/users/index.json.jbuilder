json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :firstname, :last_name, :date_of_birth
  json.url user_url(user, format: :json)
end
