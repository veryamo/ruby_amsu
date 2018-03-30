class FullSchemaMigration < ActiveRecord::Migration[5.0]
  def change
    create_table :pcs do |t|
      t.string :Инв_№
      t.string :Корпус
      t.string :Кабинет

      t.timestamps
    end
    create_table :progs do |t|
      t.string :Название
      t.boolean :Лицензия
      t.string :Тип_лицензии
      t.string :Лиценз_№

      t.timestamps
    end
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_column :users, :password_digest, :string
    add_column :users, :remember_digest, :string
    create_table :rooms do |t|
      t.string :cabinet_num
      t.references :pc
      t.string :room_type

      t.timestamps
    end
    change_table :pcs do |t|
      t.references :room, foreign_key: true
    end
    create_join_table :pcs, :progs do |t|
      t.references :prog, foreign_key: true
      t.references :pc, foreign_key: true
    end
    create_table :departments do |t|
      t.string :name
      t.string :type
      t.string :cabinet

      t.timestamps
    end
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
    create_table :individuals do |t|
      t.string :fio
      t.references :user, foreign_key: true
      t.timestamps
    end
        change_table :individuals do |t|
      t.references :department, foreign_key: true
    end
    create_join_table :roles, :users do |t|
      t.references :role, foreign_key: true
      t.references :user, foreign_key: true
    end
    change_table :departments do |t|
      t.references :parental_dept, index: true, validate: false, polymorphic: true
    end
  end
end