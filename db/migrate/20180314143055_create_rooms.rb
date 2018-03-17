class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :cabinet_num
      t.references :pc
      t.string :room_type

      t.timestamps
    end

  end
end