class CreateKurs < ActiveRecord::Migration
  def change
    create_table :kurs do |t|
      t.string :nazwa
      t.date :termin
      t.string :miejsce
      t.text :opis

      t.timestamps
    end
  end
end
