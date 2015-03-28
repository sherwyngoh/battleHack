json.array!(@memorials) do |memorial|
  json.extract! memorial, :id, :name, :dob, :dod, :about, :race, :guestbook, :wake, :wake_date, :funeral, :funeral_date, :theme, :religion, :contact_email, :contact_number
  json.url memorial_url(memorial, format: :json)
end
