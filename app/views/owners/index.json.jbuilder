json.array!(@owners) do |owner|
  json.extract! owner, :id, :dog_id, :name, :email, :password, :doggie_cam, :insurance, :private_care, :full_time
  json.url owner_url(owner, format: :json)
end
