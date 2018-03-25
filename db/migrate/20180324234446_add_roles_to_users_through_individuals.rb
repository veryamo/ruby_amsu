class AddRolesToUsersThroughIndividuals < ActiveRecord::Migration[5.0]
  def change
    add_column :individuals, :user_id, :integer
    add_column :individuals, :role_id, :integer
    add_index :individuals, [:user_id, :role_id]
  end
end
