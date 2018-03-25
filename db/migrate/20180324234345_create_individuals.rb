class CreateIndividuals < ActiveRecord::Migration[5.0]
  def change
    create_table :individuals do |t|
      t.string :fio
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.timestamps
    end
  end
end
