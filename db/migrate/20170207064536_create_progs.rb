class CreateProgs < ActiveRecord::Migration[5.0]
  def change
    create_table :progs do |t|
      t.string :Название
      t.boolean :Лицензия
      t.string :Тип_лицензии
      t.string :Лиценз_№

      t.timestamps
    end
  end
end
