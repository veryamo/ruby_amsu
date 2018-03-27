class CreateJoinTableRolesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :roles, :users do |t|
      t.references :roles, foreign_key: true
      t.references :users, foreign_key: true
    end
  end
end
