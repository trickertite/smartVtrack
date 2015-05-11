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

ActiveRecord::Schema.define(version: 20150511004422) do

  create_table "query_users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "reservations" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "share_users", force: :cascade do |t|
    t.integer  "driver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vehicle_id"
    t.decimal  "lat"
    t.decimal  "long"
    t.integer  "is_active"
  end

  create_table "stops", force: :cascade do |t|
    t.string   "name"
    t.decimal  "lat",        precision: 12, scale: 8
    t.decimal  "long",       precision: 12, scale: 8
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "vehicle_stops", force: :cascade do |t|
    t.datetime "prev"
    t.datetime "avg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vehicle_id"
    t.integer  "stop_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "plate_number"
    t.string   "type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
