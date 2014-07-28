json.array!(@users) do |user|
  json.extract! user, :id, :dog_id, :fname, :lname, :email, :password, :sitter
  json.url user_url(user, format: :json)
end
