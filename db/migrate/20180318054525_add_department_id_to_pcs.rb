class AddDepartmentIdToPcs < ActiveRecord::Migration[5.0]
  def change
        change_table :users do |t|
      t.references :department, foreign_key: true
    end
  end
end
