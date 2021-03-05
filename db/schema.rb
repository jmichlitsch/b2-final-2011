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

ActiveRecord::Schema.define(version: 2021_03_05_161333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flight_passengers", force: :cascade do |t|
    t.bigint "flights_id"
    t.bigint "passengers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flights_id"], name: "index_flight_passengers_on_flights_id"
    t.index ["passengers_id"], name: "index_flight_passengers_on_passengers_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "flight_number"
    t.string "date"
    t.string "departure_city"
    t.string "arrival_city"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

  add_foreign_key "flight_passengers", "flights", column: "flights_id"
  add_foreign_key "flight_passengers", "passengers", column: "passengers_id"
end
