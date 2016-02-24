json.array!(@zgloszenia) do |zgloszenium|
  json.extract! zgloszenium, :id, :imie, :nazwisko, :miasto, :adres, :telefon, :email, :data_urodzenia, :wiadomosc, :zaliczka, :oplacony, :kurs_id
  json.url zgloszenium_url(zgloszenium, format: :json)
end
