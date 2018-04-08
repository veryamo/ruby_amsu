class CreateDecrees < ActiveRecord::Migration[5.0]
  def change
    create_table :decrees do |t|
      t.references :initiator, foreign_key: { to_table: :individuals }
      t.string :executors
      t.string :objects
      t.datetime :signing_date
      t.timestamps
    end
  end
end