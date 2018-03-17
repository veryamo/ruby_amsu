class AddPcsToRooms < ActiveRecord::Migration[5.0]
  def change
    change_table :pcs do |t|
      t.references :room, foreign_key: true
    end
  end
end
