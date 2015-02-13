json.array!(@cap_images) do |cap_image|
  json.extract! cap_image, :id, :url, :like_count
  json.url cap_image_url(cap_image, format: :json)
end
