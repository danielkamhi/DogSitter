json.array!(@sitters) do |sitter|
  json.extract! sitter, :id, :dog_id, :summary, :years_of_experience, :insurance, :full_time, :doggie_cam, :solo_care
  json.url sitter_url(sitter, format: :json)
end
