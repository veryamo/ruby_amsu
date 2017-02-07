class CreatePcs < ActiveRecord::Migration[5.0]
  def change
    create_table :pcs do |t|
      t.string :Инв_№
      t.string :Корпус
      t.string :Кабинет

      t.timestamps
    end
  end
end
