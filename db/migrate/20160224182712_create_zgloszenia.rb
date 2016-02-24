class CreateZgloszenia < ActiveRecord::Migration
  def change
    create_table :zgloszenia do |t|
      t.string :imie
      t.string :nazwisko
      t.string :miasto
      t.string :adres
      t.string :telefon
      t.string :email
      t.date :data_urodzenia
      t.text :wiadomosc
      t.boolean :zaliczka
      t.boolean :oplacony
      t.references :kurs, index: true

      t.timestamps
    end
  end
end
