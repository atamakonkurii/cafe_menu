# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_01_112618) do

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image_name"
    t.integer "menu_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_menus", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.index ["menu_id"], name: "index_user_menus_on_menu_id"
    t.index ["user_id"], name: "index_user_menus_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "stay_leave"
    t.integer "seat_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_menus", "menus"
  add_foreign_key "user_menus", "users"
end
