json.array!(@posts) do |post|
  json.extract! post, :id, :source, :result, :token, :user_id, :slug
  json.url post_url(post, format: :json)
end
