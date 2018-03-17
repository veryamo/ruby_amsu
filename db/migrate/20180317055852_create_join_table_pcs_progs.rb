class CreateJoinTablePcsProgs < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pcs, :progs do |t|
      t.index [:pc_id, :prog_id]
      t.index [:prog_id, :pc_id]
    end
  end
end
