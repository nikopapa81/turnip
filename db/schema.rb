# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140602054418) do

  create_table "activity_categories", force: true do |t|
    t.string   "activity_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_lines", force: true do |t|
    t.integer  "food_category_id"
    t.integer  "food_item_id"
    t.integer  "unit_of_measure_id"
    t.integer  "activity_id"
    t.float    "quantity"
    t.float    "cost_of_purchase"
    t.text     "source_of_purchase"
    t.date     "expiration_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "food_categories", force: true do |t|
    t.string   "food_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_items", force: true do |t|
    t.string   "food_item"
    t.integer  "food_category_id"
    t.integer  "unit_of_measure_id"
    t.integer  "average_expiration_days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_of_measures", force: true do |t|
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "avatar_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
