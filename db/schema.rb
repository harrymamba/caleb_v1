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

ActiveRecord::Schema.define(version: 20170711151237) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "role_id"
    t.integer  "school_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "auth_token"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "school_details", force: :cascade do |t|
    t.integer  "school_id"
    t.string   "contact_number"
    t.string   "fax_number"
    t.text     "address"
    t.text     "description"
    t.integer  "established_year"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["school_id"], name: "index_school_details_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "token"
    t.boolean  "is_active"
    t.datetime "expiration_date"
  end

end
