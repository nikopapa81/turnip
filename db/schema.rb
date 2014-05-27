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

ActiveRecord::Schema.define(version: 20140527030306) do

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

end
