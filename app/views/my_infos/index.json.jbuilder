json.array!(@my_infos) do |my_info|
  json.extract! my_info, :id
  json.url my_info_url(my_info, format: :json)
end
