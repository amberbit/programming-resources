json.array!(@links) do |link|
  json.extract! link, :id, :url, :title, :description, :subject_id
  json.url link_url(link, format: :json)
end
