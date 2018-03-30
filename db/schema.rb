# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180329231732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "cabinet"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "parental_dept_type"
    t.integer  "parental_dept_id"
    t.index ["parental_dept_type", "parental_dept_id"], name: "index_departments_on_parental_dept_type_and_parental_dept_id", using: :btree
  end

  create_table "individuals", force: :cascade do |t|
    t.string   "fio"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "department_id"
    t.index ["department_id"], name: "index_individuals_on_department_id", using: :btree
    t.index ["user_id"], name: "index_individuals_on_user_id", using: :btree
  end

  create_table "pcs", force: :cascade do |t|
    t.string   "invent_num"
    t.date     "prod_date"
    t.date     "buying_date"
    t.string   "cathedra"
    t.string   "placing"
    t.string   "responsible_person"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "room_id"
    t.index ["room_id"], name: "index_pcs_on_room_id", using: :btree
  end

  create_table "pcs_progs", id: false, force: :cascade do |t|
    t.integer "pc_id"
    t.integer "prog_id"
    t.index ["pc_id"], name: "index_pcs_progs_on_pc_id", using: :btree
    t.index ["prog_id"], name: "index_pcs_progs_on_prog_id", using: :btree
  end

  create_table "progs", force: :cascade do |t|
    t.string   "name"
    t.string   "license_type"
    t.integer  "licenses_count"
    t.integer  "install_count"
    t.string   "cathegory_cathedra"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
    t.index ["role_id"], name: "index_roles_users_on_role_id", using: :btree
    t.index ["user_id"], name: "index_roles_users_on_user_id", using: :btree
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "cabinet_num"
    t.integer  "pc_id"
    t.string   "room_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pc_id"], name: "index_rooms_on_pc_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "individuals", "departments"
  add_foreign_key "individuals", "users"
  add_foreign_key "pcs", "rooms"
  add_foreign_key "pcs_progs", "pcs"
  add_foreign_key "pcs_progs", "progs"
  add_foreign_key "roles_users", "roles"
  add_foreign_key "roles_users", "users"
end
