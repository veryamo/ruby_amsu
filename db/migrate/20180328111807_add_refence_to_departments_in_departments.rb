class AddRefenceToDepartmentsInDepartments < ActiveRecord::Migration[5.0]
  def change
    change_table :departments do |t|
      t.references :parental_dept, index: true
    end
  end
end
