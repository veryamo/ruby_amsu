class CreateJoinTablePcsProgs < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pcs, :progs do |t|
      t.references :prog, foreign_key: true
      t.references :pc, foreign_key: true
    end
  end
end
