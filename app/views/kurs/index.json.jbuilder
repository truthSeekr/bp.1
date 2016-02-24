json.array!(@kurs) do |kur|
  json.extract! kur, :id, :nazwa, :termin, :miejsce, :opis
  json.url kur_url(kur, format: :json)
end
