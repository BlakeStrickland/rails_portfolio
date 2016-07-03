json.array!(@guest_infos) do |guest_info|
  json.extract! guest_info, :id, :name, :email, :phone_number, :company
  json.url guest_info_url(guest_info, format: :json)
end
